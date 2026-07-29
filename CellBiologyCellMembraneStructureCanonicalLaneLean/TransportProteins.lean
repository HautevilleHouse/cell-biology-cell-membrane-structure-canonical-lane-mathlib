import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure TransportProteinsPackage where
  channelTypes : Prop
  carrierProteins : Prop
  activeTransport : Prop
  passiveTransport : Prop
  ionGradients : Prop

structure TransportProteinsEvidence (T : TransportProteinsPackage) where
  channelTypesClosed : T.channelTypes
  carrierProteinsClosed : T.carrierProteins
  activeTransportClosed : T.activeTransport
  passiveTransportClosed : T.passiveTransport
  ionGradientsClosed : T.ionGradients

def TransportProteinsClosed (T : TransportProteinsPackage) : Prop :=
  T.channelTypes ∧ T.carrierProteins ∧ T.activeTransport ∧ T.passiveTransport ∧ T.ionGradients

theorem transport_proteins_closed_from_evidence (T : TransportProteinsPackage) (E : TransportProteinsEvidence T) :
    TransportProteinsClosed T := by
  exact And.intro E.channelTypesClosed
    (And.intro E.carrierProteinsClosed
      (And.intro E.activeTransportClosed
        (And.intro E.passiveTransportClosed E.ionGradientsClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse