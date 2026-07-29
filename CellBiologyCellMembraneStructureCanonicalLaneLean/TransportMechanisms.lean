import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure TransportPackage where
  passiveTransport : Prop
  activeTransport : Prop
  facilitatedDiffusion : Prop
  ionChannels : Prop
  carrierProteins : Prop

structure TransportEvidence (T : TransportPackage) where
  passiveTransportClosed : T.passiveTransport
  activeTransportClosed : T.activeTransport
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  ionChannelsClosed : T.ionChannels
  carrierProteinsClosed : T.carrierProteins

def TransportClosed (T : TransportPackage) : Prop :=
  T.passiveTransport ∧ T.activeTransport ∧ T.facilitatedDiffusion ∧ T.ionChannels ∧ T.carrierProteins

theorem transport_closed_from_evidence (T : TransportPackage) (E : TransportEvidence T) : TransportClosed T := by
  exact And.intro E.passiveTransportClosed
    (And.intro E.activeTransportClosed
      (And.intro E.facilitatedDiffusionClosed
        (And.intro E.ionChannelsClosed E.carrierProteinsClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse