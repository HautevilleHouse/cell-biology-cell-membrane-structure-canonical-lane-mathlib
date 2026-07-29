import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneFluidMosaicPackage (P : PhospholipidBilayerPackage) where
  lateralDiffusion : Prop
  proteinMobility : Prop
  lipidRaftFormation : Prop
  membraneAsymmetry : Prop

structure MembraneFluidMosaicEvidence {P : PhospholipidBilayerPackage}
    (M : MembraneFluidMosaicPackage P) where
  lateralDiffusionClosed : M.lateralDiffusion
  proteinMobilityClosed : M.proteinMobility
  lipidRaftFormationClosed : M.lipidRaftFormation
  membraneAsymmetryClosed : M.membraneAsymmetry

def MembraneFluidMosaicClosed {P : PhospholipidBilayerPackage}
    (M : MembraneFluidMosaicPackage P) : Prop :=
  M.lateralDiffusion ∧ M.proteinMobility ∧ M.lipidRaftFormation ∧ M.membraneAsymmetry

theorem membrane_fluid_mosaic_closed_from_evidence {P : PhospholipidBilayerPackage}
    (M : MembraneFluidMosaicPackage P) (E : MembraneFluidMosaicEvidence M) :
    MembraneFluidMosaicClosed M := by
  exact And.intro E.lateralDiffusionClosed
    (And.intro E.proteinMobilityClosed
      (And.intro E.lipidRaftFormationClosed E.membraneAsymmetryClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse