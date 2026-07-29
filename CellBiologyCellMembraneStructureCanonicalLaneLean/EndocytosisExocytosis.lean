import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure EndocytosisExocytosisPackage where
  clathrinMediated : Prop
  caveolae : Prop
  phagocytosis : Prop
  pinocytosis : Prop
  exocytosisVesicleDocking : Prop
  membraneFusion : Prop

structure EndocytosisExocytosisEvidence (E : EndocytosisExocytosisPackage) where
  clathrinMediatedClosed : E.clathrinMediated
  caveolaeClosed : E.caveolae
  phagocytosisClosed : E.phagocytosis
  pinocytosisClosed : E.pinocytosis
  exocytosisVesicleDockingClosed : E.exocytosisVesicleDocking
  membraneFusionClosed : E.membraneFusion

def EndocytosisExocytosisClosed (E : EndocytosisExocytosisPackage) : Prop :=
  E.clathrinMediated ∧ E.caveolae ∧ E.phagocytosis ∧ E.pinocytosis ∧ E.exocytosisVesicleDocking ∧ E.membraneFusion

theorem endocytosis_exocytosis_closed_from_evidence (E : EndocytosisExocytosisPackage) (Ev : EndocytosisExocytosisEvidence E) :
    EndocytosisExocytosisClosed E := by
  exact And.intro Ev.clathrinMediatedClosed
    (And.intro Ev.caveolaeClosed
      (And.intro Ev.phagocytosisClosed
        (And.intro Ev.pinocytosisClosed
          (And.intro Ev.exocytosisVesicleDockingClosed Ev.membraneFusionClosed))))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse