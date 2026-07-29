import CellBiologyCellMembraneStructureCanonicalLaneLean.PhospholipidBilayer

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneProteinsPackage {P : PhospholipidBilayerPackage} where
  integralProteins : Prop
  peripheralProteins : Prop
  transmembraneDomains : Prop
  lipidAnchoredProteins : Prop
  proteinFunctions : Prop

structure MembraneProteinsEvidence {P : PhospholipidBilayerPackage}
    (MP : MembraneProteinsPackage P) where
  integralProteinsClosed : MP.integralProteins
  peripheralProteinsClosed : MP.peripheralProteins
  transmembraneDomainsClosed : MP.transmembraneDomains
  lipidAnchoredProteinsClosed : MP.lipidAnchoredProteins
  proteinFunctionsClosed : MP.proteinFunctions

def MembraneProteinsClosed {P : PhospholipidBilayerPackage}
    (MP : MembraneProteinsPackage P) : Prop :=
  MP.integralProteins ∧ MP.peripheralProteins ∧ MP.transmembraneDomains ∧ MP.lipidAnchoredProteins ∧ MP.proteinFunctions

theorem membrane_proteins_closed_from_evidence
    {P : PhospholipidBilayerPackage} (MP : MembraneProteinsPackage P)
    (E : MembraneProteinsEvidence MP) : MembraneProteinsClosed MP := by
  exact And.intro E.integralProteinsClosed
    (And.intro E.peripheralProteinsClosed
      (And.intro E.transmembraneDomainsClosed
        (And.intro E.lipidAnchoredProteinsClosed E.proteinFunctionsClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
