import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure CellAdhesionPackage where
  cadherins : Prop
  integrins : Prop
  selectins : Prop
  adhesionJunctions : Prop
  cellMatrixAdhesion : Prop

structure CellAdhesionEvidence (A : CellAdhesionPackage) where
  cadherinsClosed : A.cadherins
  integrinsClosed : A.integrins
  selectinsClosed : A.selectins
  adhesionJunctionsClosed : A.adhesionJunctions
  cellMatrixAdhesionClosed : A.cellMatrixAdhesion

def CellAdhesionClosed (A : CellAdhesionPackage) : Prop :=
  A.cadherins ∧ A.integrins ∧ A.selectins ∧ A.adhesionJunctions ∧ A.cellMatrixAdhesion

theorem cell_adhesion_closed_from_evidence (A : CellAdhesionPackage) (E : CellAdhesionEvidence A) : CellAdhesionClosed A := by
  exact And.intro E.cadherinsClosed
    (And.intro E.integrinsClosed
      (And.intro E.selectinsClosed
        (And.intro E.adhesionJunctionsClosed E.cellMatrixAdhesionClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse