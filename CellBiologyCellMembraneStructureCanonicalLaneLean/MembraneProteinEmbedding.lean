import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneProteinEmbeddingPackage {P : PhospholipidBilayerPackage}
    {M : MembraneFluidMosaicPackage P} where
  integralProteins : Prop
  peripheralProteins : Prop
  transmembraneDomains : Prop
  proteinLipidInteractions : Prop

structure MembraneProteinEmbeddingEvidence {P : PhospholipidBilayerPackage}
    {M : MembraneFluidMosaicPackage P} (E : MembraneProteinEmbeddingPackage M) where
  integralProteinsClosed : E.integralProteins
  peripheralProteinsClosed : E.peripheralProteins
  transmembraneDomainsClosed : E.transmembraneDomains
  proteinLipidInteractionsClosed : E.proteinLipidInteractions

def MembraneProteinEmbeddingClosed {P : PhospholipidBilayerPackage}
    {M : MembraneFluidMosaicPackage P} (E : MembraneProteinEmbeddingPackage M) : Prop :=
  E.integralProteins ∧ E.peripheralProteins ∧ E.transmembraneDomains ∧ E.proteinLipidInteractions

theorem membrane_protein_embedding_closed_from_evidence {P : PhospholipidBilayerPackage}
    {M : MembraneFluidMosaicPackage P} (E : MembraneProteinEmbeddingPackage M)
    (Ev : MembraneProteinEmbeddingEvidence E) : MembraneProteinEmbeddingClosed E := by
  exact And.intro Ev.integralProteinsClosed
    (And.intro Ev.peripheralProteinsClosed
      (And.intro Ev.transmembraneDomainsClosed Ev.proteinLipidInteractionsClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse