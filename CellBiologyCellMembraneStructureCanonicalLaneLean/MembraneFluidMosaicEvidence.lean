import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneFluidMosaicEvidencePackage where
  proteinMobility : Prop
  lateralDiffusion : Prop
  lipidRafts : Prop
  cytoskeletonTethering : Prop
  receptorClustering : Prop

structure MembraneFluidMosaicEvidenceEvidence (P : MembraneFluidMosaicEvidencePackage) where
  proteinMobilityClosed : P.proteinMobility
  lateralDiffusionClosed : P.lateralDiffusion
  lipidRaftsClosed : P.lipidRafts
  cytoskeletonTetheringClosed : P.cytoskeletonTethering
  receptorClusteringClosed : P.receptorClustering

def MembraneFluidMosaicEvidenceClosed (P : MembraneFluidMosaicEvidencePackage) : Prop :=
  P.proteinMobility ∧ P.lateralDiffusion ∧ P.lipidRafts ∧ P.cytoskeletonTethering ∧ P.receptorClustering

theorem membrane_fluid_mosaic_evidence_closed_from_evidence
    (P : MembraneFluidMosaicEvidencePackage) (E : MembraneFluidMosaicEvidenceEvidence P) :
    MembraneFluidMosaicEvidenceClosed P := by
  exact And.intro E.proteinMobilityClosed
    (And.intro E.lateralDiffusionClosed
      (And.intro E.lipidRaftsClosed
        (And.intro E.cytoskeletonTetheringClosed E.receptorClusteringClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
