import CellBiologyCellMembraneStructureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MembraneSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MembraneAdmittedObject where
  space : MembraneSpace
  lipidBilayer : Prop
  fluidMosaic : Prop
  membraneModel : Type
  membraneTopology : TopologicalSpace membraneModel
  structureConfirmed : Prop
  conclusion : structureConfirmed

structure MembraneEndgameState where
  object : MembraneAdmittedObject

def MembraneWitnessClosed (O : MembraneAdmittedObject) : Prop :=
  O.structureConfirmed

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
