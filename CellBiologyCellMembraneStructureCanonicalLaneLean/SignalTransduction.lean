import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure SignalTransductionPackage where
  receptorBinding : Prop
  conformationalChange : Prop
  secondMessengers : Prop
  cascadeAmplification : Prop
  signalTermination : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  receptorBindingClosed : S.receptorBinding
  conformationalChangeClosed : S.conformationalChange
  secondMessengersClosed : S.secondMessengers
  cascadeAmplificationClosed : S.cascadeAmplification
  signalTerminationClosed : S.signalTermination

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.receptorBinding ∧ S.conformationalChange ∧ S.secondMessengers ∧ S.cascadeAmplification ∧ S.signalTermination

theorem signal_transduction_closed_from_evidence (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) : SignalTransductionClosed S := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.secondMessengersClosed
        (And.intro E.cascadeAmplificationClosed E.signalTerminationClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse