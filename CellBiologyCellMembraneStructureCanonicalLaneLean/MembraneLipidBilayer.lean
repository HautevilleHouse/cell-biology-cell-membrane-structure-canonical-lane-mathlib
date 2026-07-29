import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure LipidBilayer where
  phospholipidType : Type u
  fluidity : Prop
  selectivePermeability : Prop
  selfSealing : Prop

def LipidBilayerClosed (L : LipidBilayer) : Prop :=
  L.fluidity ∧ L.selectivePermeability ∧ L.selfSealing

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
