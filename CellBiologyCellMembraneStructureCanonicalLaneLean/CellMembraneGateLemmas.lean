import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

open HautevilleHouse.CellBiologyCellMembraneStructureCanonicalLaneLean

def gateClosed (A : CellMembraneAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CellMembraneAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
