import CellBiologyCellMembraneStructureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure PhospholipidBilayerPackage where
  amphipathicLipids : Prop
  hydrophilicHeads : Prop
  hydrophobicTails : Prop
  bilayerFormation : Prop
  spontaneousSelfAssembly : Prop

structure PhospholipidBilayerEvidence (P : PhospholipidBilayerPackage) where
  amphipathicLipidsClosed : P.amphipathicLipids
  hydrophilicHeadsClosed : P.hydrophilicHeads
  hydrophobicTailsClosed : P.hydrophobicTails
  bilayerFormationClosed : P.bilayerFormation
  spontaneousSelfAssemblyClosed : P.spontaneousSelfAssembly

def PhospholipidBilayerClosed (P : PhospholipidBilayerPackage) : Prop :=
  P.amphipathicLipids ∧ P.hydrophilicHeads ∧ P.hydrophobicTails ∧ P.bilayerFormation ∧ P.spontaneousSelfAssembly

theorem phospholipid_bilayer_closed_from_evidence
    (P : PhospholipidBilayerPackage) (E : PhospholipidBilayerEvidence P) :
    PhospholipidBilayerClosed P := by
  exact And.intro E.amphipathicLipidsClosed
    (And.intro E.hydrophilicHeadsClosed
      (And.intro E.hydrophobicTailsClosed
        (And.intro E.bilayerFormationClosed E.spontaneousSelfAssemblyClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
