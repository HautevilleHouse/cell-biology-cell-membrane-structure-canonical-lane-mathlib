import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure TransportCrossMembranePackage where
  passiveDiffusion : Prop
  facilitatedTransport : Prop
  activeTransport : Prop
  exocytosisEndocytosis : Prop
  ionChannelGating : Prop
  membranePotential : Prop

structure TransportCrossMembraneEvidence (P : TransportCrossMembranePackage) where
  passiveDiffusionClosed : P.passiveDiffusion
  facilitatedTransportClosed : P.facilitatedTransport
  activeTransportClosed : P.activeTransport
  exocytosisEndocytosisClosed : P.exocytosisEndocytosis
  ionChannelGatingClosed : P.ionChannelGating
  membranePotentialClosed : P.membranePotential

def TransportCrossMembraneClosed (P : TransportCrossMembranePackage) : Prop :=
  P.passiveDiffusion ∧ P.facilitatedTransport ∧ P.activeTransport ∧
  P.exocytosisEndocytosis ∧ P.ionChannelGating ∧ P.membranePotential

theorem transport_cross_membrane_closed_from_evidence
    (P : TransportCrossMembranePackage) (E : TransportCrossMembraneEvidence P) :
    TransportCrossMembraneClosed P := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.facilitatedTransportClosed
      (And.intro E.activeTransportClosed
        (And.intro E.exocytosisEndocytosisClosed
          (And.intro E.ionChannelGatingClosed E.membranePotentialClosed))))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
