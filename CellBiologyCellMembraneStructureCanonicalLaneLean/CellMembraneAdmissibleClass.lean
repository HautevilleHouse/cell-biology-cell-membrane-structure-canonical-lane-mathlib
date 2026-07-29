import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure CellMembraneAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  membraneStructure : Prop
  bilayerIntegrity : Prop
  selectivePermeability : Prop
  signalingCapability : Prop
  conclusion : membraneStructure ∧ bilayerIntegrity ∧ selectivePermeability ∧ signalingCapability

structure CellMembraneEndgameState where
  object : CellMembraneAdmittedObject

def CellMembraneWitnessClosed (O : CellMembraneAdmittedObject) : Prop :=
  O.membraneStructure ∧ O.bilayerIntegrity ∧ O.selectivePermeability ∧ O.signalingCapability

structure CellMembraneAdmissibleClass where
  object : CellMembraneAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def cellMembraneAdmittedClosure (A : CellMembraneAdmissibleClass) : Prop :=
  CellMembraneWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
