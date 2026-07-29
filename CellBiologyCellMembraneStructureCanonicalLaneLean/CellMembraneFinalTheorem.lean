import HautevilleHouse.CellBiologyCellMembraneStructureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

def ConstrainedCellMembraneClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_membrane_endgame (A : AdmissibleClass) :
    ConstrainedCellMembraneClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse