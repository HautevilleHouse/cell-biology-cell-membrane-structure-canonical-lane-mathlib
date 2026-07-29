import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneProtein where
  proteinType : Type u
  transmembraneSegment : Prop
  receptorActivity : Prop
  transportFunction : Prop
  signalingFunction : Prop

def MembraneProteinClosed (M : MembraneProtein) : Prop :=
  M.transmembraneSegment ∧ M.receptorActivity ∧ (M.transportFunction ∨ M.signalingFunction)

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
