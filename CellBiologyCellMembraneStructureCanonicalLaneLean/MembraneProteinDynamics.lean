import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneProteinPackage where
  integralProteins : Prop
  peripheralProteins : Prop
  lateralDiffusion : Prop
  proteinMobility : Prop

structure MembraneProteinEvidence (P : MembraneProteinPackage) where
  integralProteinsClosed : P.integralProteins
  peripheralProteinsClosed : P.peripheralProteins
  lateralDiffusionClosed : P.lateralDiffusion
  proteinMobilityClosed : P.proteinMobility

def MembraneProteinClosed (P : MembraneProteinPackage) : Prop :=
  P.integralProteins ∧ P.peripheralProteins ∧ P.lateralDiffusion ∧ P.proteinMobility

theorem membrane_protein_closed_from_evidence (P : MembraneProteinPackage) (E : MembraneProteinEvidence P) : MembraneProteinClosed P := by
  exact And.intro E.integralProteinsClosed
    (And.intro E.peripheralProteinsClosed
      (And.intro E.lateralDiffusionClosed E.proteinMobilityClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse