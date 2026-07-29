import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembranePotentialDynamicsPackage where
  restingPotential : ℝ
  ionConcentrationGradient : Prop
  ionChannelGating : Prop
  depolarizationCycle : Prop
  actionPotentialPropagation : Prop

structure MembranePotentialDynamicsEvidence (M : MembranePotentialDynamicsPackage) where
  restingPotentialClosed : M.restingPotential < 0
  ionConcentrationGradientClosed : M.ionConcentrationGradient
  ionChannelGatingClosed : M.ionChannelGating
  depolarizationCycleClosed : M.depolarizationCycle
  actionPotentialPropagationClosed : M.actionPotentialPropagation

def MembranePotentialDynamicsClosed (M : MembranePotentialDynamicsPackage) : Prop :=
  (M.restingPotential < 0) ∧ M.ionConcentrationGradient ∧ M.ionChannelGating ∧
  M.depolarizationCycle ∧ M.actionPotentialPropagation

theorem membrane_potential_dynamics_closed_from_evidence
    (M : MembranePotentialDynamicsPackage)
    (E : MembranePotentialDynamicsEvidence M) : MembranePotentialDynamicsClosed M := by
  exact And.intro E.restingPotentialClosed
    (And.intro E.ionConcentrationGradientClosed
      (And.intro E.ionChannelGatingClosed
        (And.intro E.depolarizationCycleClosed E.actionPotentialPropagationClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse