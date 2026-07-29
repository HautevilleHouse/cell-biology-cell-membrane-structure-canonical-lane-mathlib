import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure TransportProcess where
  soluteType : Type u
  membranePermeability : Prop
  concentrationGradient : Prop
  passiveTransport : Prop
  activeTransport : Prop

def TransportProcessClosed (T : TransportProcess) : Prop :=
  T.passiveTransport ∧ T.activeTransport

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
