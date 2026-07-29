import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure SignalTransductionBridgePackage where
  receptorBinding : Prop
  conformationalChange : Prop
  secondMessengerCascade : Prop
  phosphorylation : Prop
  geneExpressionChange : Prop

structure SignalTransductionBridgeEvidence (P : SignalTransductionBridgePackage) where
  receptorBindingClosed : P.receptorBinding
  conformationalChangeClosed : P.conformationalChange
  secondMessengerCascadeClosed : P.secondMessengerCascade
  phosphorylationClosed : P.phosphorylation
  geneExpressionChangeClosed : P.geneExpressionChange

def SignalTransductionBridgeClosed (P : SignalTransductionBridgePackage) : Prop :=
  P.receptorBinding ∧ P.conformationalChange ∧ P.secondMessengerCascade ∧ P.phosphorylation ∧ P.geneExpressionChange

theorem signal_transduction_bridge_closed_from_evidence
    (P : SignalTransductionBridgePackage) (E : SignalTransductionBridgeEvidence P) :
    SignalTransductionBridgeClosed P := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.secondMessengerCascadeClosed
        (And.intro E.phosphorylationClosed E.geneExpressionChangeClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
