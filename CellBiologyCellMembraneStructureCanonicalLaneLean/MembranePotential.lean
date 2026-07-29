import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembranePotentialPackage where
  restingPotential : Prop
  nernstEquation : Prop
  goldmanEquation : Prop
  actionPotential : Prop
  ionPumps : Prop

structure MembranePotentialEvidence (M : MembranePotentialPackage) where
  restingPotentialClosed : M.restingPotential
  nernstEquationClosed : M.nernstEquation
  goldmanEquationClosed : M.goldmanEquation
  actionPotentialClosed : M.actionPotential
  ionPumpsClosed : M.ionPumps

def MembranePotentialClosed (M : MembranePotentialPackage) : Prop :=
  M.restingPotential ∧ M.nernstEquation ∧ M.goldmanEquation ∧ M.actionPotential ∧ M.ionPumps

theorem membrane_potential_closed_from_evidence (M : MembranePotentialPackage) (E : MembranePotentialEvidence M) :
    MembranePotentialClosed M := by
  exact And.intro E.restingPotentialClosed
    (And.intro E.nernstEquationClosed
      (And.intro E.goldmanEquationClosed
        (And.intro E.actionPotentialClosed E.ionPumpsClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse