import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneSignalingPackage where
  receptorLigandBinding : Prop
  signalTransduction : Prop
  secondMessenger : Prop
  cellularResponse : Prop

structure MembraneSignalingEvidence (S : MembraneSignalingPackage) where
  receptorLigandBindingClosed : S.receptorLigandBinding
  signalTransductionClosed : S.signalTransduction
  secondMessengerClosed : S.secondMessenger
  cellularResponseClosed : S.cellularResponse

def MembraneSignalingClosed (S : MembraneSignalingPackage) : Prop :=
  S.receptorLigandBinding ∧ S.signalTransduction ∧ S.secondMessenger ∧ S.cellularResponse

theorem membrane_signaling_closed_from_evidence (S : MembraneSignalingPackage) (E : MembraneSignalingEvidence S) : MembraneSignalingClosed S :=
  by
    exact And.intro E.receptorLigandBindingClosed (And.intro E.signalTransductionClosed (And.intro E.secondMessengerClosed E.cellularResponseClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse