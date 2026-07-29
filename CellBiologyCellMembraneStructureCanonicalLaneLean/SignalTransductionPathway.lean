import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure SignalTransductionPathwayPackage where
  receptorBinding : Prop
  conformationalChange : Prop
  intracellularCascade : Prop
  secondMessengerProduction : Prop
  signalAmplification : Prop

structure SignalTransductionPathwayEvidence (S : SignalTransductionPathwayPackage) where
  receptorBindingClosed : S.receptorBinding
  conformationalChangeClosed : S.conformationalChange
  intracellularCascadeClosed : S.intracellularCascade
  secondMessengerProductionClosed : S.secondMessengerProduction
  signalAmplificationClosed : S.signalAmplification

def SignalTransductionPathwayClosed (S : SignalTransductionPathwayPackage) : Prop :=
  S.receptorBinding ∧ S.conformationalChange ∧ S.intracellularCascade ∧
  S.secondMessengerProduction ∧ S.signalAmplification

theorem signal_transduction_pathway_closed_from_evidence
    (S : SignalTransductionPathwayPackage)
    (E : SignalTransductionPathwayEvidence S) : SignalTransductionPathwayClosed S := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.intracellularCascadeClosed
        (And.intro E.secondMessengerProductionClosed
          E.signalAmplificationClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse