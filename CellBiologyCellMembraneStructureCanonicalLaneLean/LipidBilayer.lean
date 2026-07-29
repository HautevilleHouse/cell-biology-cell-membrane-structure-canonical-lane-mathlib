import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure LipidBilayerPackage where
  phospholipidBilayer : Prop
  fluidMosaicModel : Prop
  selectivePermeability : Prop
  selfSealing : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  phospholipidBilayerClosed : L.phospholipidBilayer
  fluidMosaicModelClosed : L.fluidMosaicModel
  selectivePermeabilityClosed : L.selectivePermeability
  selfSealingClosed : L.selfSealing

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.phospholipidBilayer ∧ L.fluidMosaicModel ∧ L.selectivePermeability ∧ L.selfSealing

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) : LipidBilayerClosed L :=
  by
    exact And.intro E.phospholipidBilayerClosed (And.intro E.fluidMosaicModelClosed (And.intro E.selectivePermeabilityClosed E.selfSealingClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse