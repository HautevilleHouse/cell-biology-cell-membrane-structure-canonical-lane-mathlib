import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneCytoskeletonInterfacePackage where
  corticalActinNetwork : Type u
  spectrinMeshwork : Type v
  linkProteins : Type w
  mechanicalSupport : Prop
  membraneShapeControl : Prop

structure MembraneCytoskeletonInterfaceEvidence
    (I : MembraneCytoskeletonInterfacePackage) where
  mechanicalSupportClosed : I.mechanicalSupport
  membraneShapeControlClosed : I.membraneShapeControl

def MembraneCytoskeletonInterfaceClosed (I : MembraneCytoskeletonInterfacePackage) : Prop :=
  I.mechanicalSupport ∧ I.membraneShapeControl

theorem membrane_cytoskeleton_interface_closed_from_evidence
    (I : MembraneCytoskeletonInterfacePackage)
    (E : MembraneCytoskeletonInterfaceEvidence I) : MembraneCytoskeletonInterfaceClosed I := by
  exact And.intro E.mechanicalSupportClosed E.membraneShapeControlClosed

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse