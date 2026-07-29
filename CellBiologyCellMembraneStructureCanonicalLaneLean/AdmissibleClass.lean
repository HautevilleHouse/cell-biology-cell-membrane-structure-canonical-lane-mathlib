import CellBiologyCellMembraneStructureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure AdmissibleClass where
  object : MembraneAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MembraneWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
