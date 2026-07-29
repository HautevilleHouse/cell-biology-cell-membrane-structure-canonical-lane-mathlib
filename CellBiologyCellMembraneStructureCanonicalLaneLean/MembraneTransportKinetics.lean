import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneTransportKineticsPackage where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  transportRateConstants : ℝ
  saturationKinetics : Prop

structure MembraneTransportKineticsEvidence (T : MembraneTransportKineticsPackage) where
  passiveDiffusionClosed : T.passiveDiffusion
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  activeTransportClosed : T.activeTransport
  transportRateConstantsClosed : T.transportRateConstants > 0
  saturationKineticsClosed : T.saturationKinetics

def MembraneTransportKineticsClosed (T : MembraneTransportKineticsPackage) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧ T.activeTransport ∧
  (T.transportRateConstants > 0) ∧ T.saturationKinetics

theorem membrane_transport_kinetics_closed_from_evidence
    (T : MembraneTransportKineticsPackage)
    (E : MembraneTransportKineticsEvidence T) : MembraneTransportKineticsClosed T := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.facilitatedDiffusionClosed
      (And.intro E.activeTransportClosed
        (And.intro E.transportRateConstantsClosed E.saturationKineticsClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse