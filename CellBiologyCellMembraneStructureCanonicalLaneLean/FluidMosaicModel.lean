import CellBiologyCellMembraneStructureCanonicalLaneLean.MembraneProteins

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure FluidMosaicModelPackage {P : PhospholipidBilayerPackage}
    {MP : MembraneProteinsPackage P} where
  lateralDiffusion : Prop
  membraneFluidity : Prop
  proteinMobility : Prop
  lipidRafts : Prop
  asymmetricDistribution : Prop

structure FluidMosaicModelEvidence {P : PhospholipidBilayerPackage}
    {MP : MembraneProteinsPackage P} (FMM : FluidMosaicModelPackage MP) where
  lateralDiffusionClosed : FMM.lateralDiffusion
  membraneFluidityClosed : FMM.membraneFluidity
  proteinMobilityClosed : FMM.proteinMobility
  lipidRaftsClosed : FMM.lipidRafts
  asymmetricDistributionClosed : FMM.asymmetricDistribution

def FluidMosaicModelClosed {P : PhospholipidBilayerPackage}
    {MP : MembraneProteinsPackage P} (FMM : FluidMosaicModelPackage MP) : Prop :=
  FMM.lateralDiffusion ∧ FMM.membraneFluidity ∧ FMM.proteinMobility ∧ FMM.lipidRafts ∧ FMM.asymmetricDistribution

theorem fluid_mosaic_model_closed_from_evidence
    {P : PhospholipidBilayerPackage} {MP : MembraneProteinsPackage P}
    (FMM : FluidMosaicModelPackage MP) (E : FluidMosaicModelEvidence FMM) :
    FluidMosaicModelClosed FMM := by
  exact And.intro E.lateralDiffusionClosed
    (And.intro E.membraneFluidityClosed
      (And.intro E.proteinMobilityClosed
        (And.intro E.lipidRaftsClosed E.asymmetricDistributionClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
