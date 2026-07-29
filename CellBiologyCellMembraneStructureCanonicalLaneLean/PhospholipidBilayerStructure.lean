import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure PhospholipidBilayerPackage where
  hydrophilicHeads : Prop
  hydrophobicTails : Prop
  lipidBilayerFormation : Prop
  selectivePermeability : Prop

structure PhospholipidBilayerEvidence (P : PhospholipidBilayerPackage) where
  hydrophilicHeadsClosed : P.hydrophilicHeads
  hydrophobicTailsClosed : P.hydrophobicTails
  lipidBilayerFormationClosed : P.lipidBilayerFormation
  selectivePermeabilityClosed : P.selectivePermeability

def PhospholipidBilayerClosed (P : PhospholipidBilayerPackage) : Prop :=
  P.hydrophilicHeads ∧ P.hydrophobicTails ∧ P.lipidBilayerFormation ∧ P.selectivePermeability

theorem phospholipid_bilayer_closed_from_evidence (P : PhospholipidBilayerPackage)
    (E : PhospholipidBilayerEvidence P) : PhospholipidBilayerClosed P := by
  exact And.intro E.hydrophilicHeadsClosed
    (And.intro E.hydrophobicTailsClosed
      (And.intro E.lipidBilayerFormationClosed E.selectivePermeabilityClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse