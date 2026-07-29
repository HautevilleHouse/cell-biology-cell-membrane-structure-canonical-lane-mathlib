import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureCanonicalLaneLean.MembranesBasicObjects

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure TransmembraneTransportPackage where
  passiveTransport : Prop
  activeTransport : Prop
  facilitatedDiffusion : Prop
  evidence : passiveTransport ∧ activeTransport ∧ facilitatedDiffusion

structure TransportEvidence (T : TransmembraneTransportPackage) where
  passiveClosed : T.passiveTransport
  activeClosed : T.activeTransport
  facilitatedClosed : T.facilitatedDiffusion

def TransportClosed (T : TransmembraneTransportPackage) : Prop :=
  T.passiveTransport ∧ T.activeTransport ∧ T.facilitatedDiffusion

theorem transport_closed_from_evidence (T : TransmembraneTransportPackage) (E : TransportEvidence T) : TransportClosed T :=
  And.intro E.passiveClosed (And.intro E.activeClosed E.facilitatedClosed)

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse