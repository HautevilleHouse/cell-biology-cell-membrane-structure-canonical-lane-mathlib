import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure LipidBilayer where
  phospholipids : Type
  fluidity : Prop
  bilayerThickness : Prop
arrierFunction : Prop

structure MembraneProtein where
  embedded : Bool
  function : String
  conformationalChange : Prop

structure TransportMechanism where
  passive : Prop
  active : Prop
  facilitated : Prop

structure SignalingPathway where
  receptor : MembraneProtein
  ligandBinding : Prop
  signalTransduction : Prop
  cellularResponse : Prop

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
