import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure LipidBilayer where
  leaflets : Type
  composition : Prop
  fluidity : Prop

structure MembraneProtein where
  embedded : Bool
  function : String

structure CellMembraneSpace where
  bilayer : LipidBilayer
  proteins : List MembraneProtein
  carbohydrates : Bool

structure CellMembraneAdmittedObject where
  membrane : CellMembraneSpace
  fluidMosaicModel : Prop
  semipermeable : Prop
  conclusion : semipermeable

structure CellMembraneEndgameState where
  object : CellMembraneAdmittedObject

def CellMembraneWitnessClosed (O : CellMembraneAdmittedObject) : Prop :=
  O.semipermeable

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse