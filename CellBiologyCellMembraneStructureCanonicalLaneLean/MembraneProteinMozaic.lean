import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneProteinMozaicPackage where
  integralProteins : Type u
  peripheralProteins : Type v
  lipidAnchoredProteins : Type w
  proteinDistribution : Prop
  transmembraneDomain : Prop

structure MembraneProteinMozaicEvidence (M : MembraneProteinMozaicPackage) where
  proteinDistributionClosed : M.proteinDistribution
  transmembraneDomainClosed : M.transmembraneDomain

def MembraneProteinMozaicClosed (M : MembraneProteinMozaicPackage) : Prop :=
  M.proteinDistribution ∧ M.transmembraneDomain

theorem membrane_protein_mozaic_closed_from_evidence (M : MembraneProteinMozaicPackage)
    (E : MembraneProteinMozaicEvidence M) : MembraneProteinMozaicClosed M := by
  exact And.intro E.proteinDistributionClosed E.transmembraneDomainClosed

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse