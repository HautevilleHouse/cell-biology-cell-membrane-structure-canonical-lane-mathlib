import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure PhospholipidBilayerPackage where
  lipidBilayer : Type u
  bilayerTopology : TopologicalSpace lipidBilayer
  hydrophobicCoreThickness : ℝ
  hydrophilicHeadGroups : Prop
  lateralFluidity : Prop
  selfSealingProperty : Prop

structure PhospholipidBilayerEvidence (P : PhospholipidBilayerPackage) where
  hydrophobicCoreThicknessClosed : P.hydrophobicCoreThickness > 0
  hydrophilicHeadGroupsClosed : P.hydrophilicHeadGroups
  lateralFluidityClosed : P.lateralFluidity
  selfSealingPropertyClosed : P.selfSealingProperty

def PhospholipidBilayerClosed (P : PhospholipidBilayerPackage) : Prop :=
  (P.hydrophobicCoreThickness > 0) ∧ P.hydrophilicHeadGroups ∧
  P.lateralFluidity ∧ P.selfSealingProperty

theorem phospholipid_bilayer_closed_from_evidence (P : PhospholipidBilayerPackage)
    (E : PhospholipidBilayerEvidence P) : PhospholipidBilayerClosed P := by
  exact And.intro E.hydrophobicCoreThicknessClosed
    (And.intro E.hydrophilicHeadGroupsClosed
      (And.intro E.lateralFluidityClosed E.selfSealingPropertyClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse