import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure MembraneTraffickingPackage where
  endocytosis : Prop
  exocytosis : Prop
  vesicleFormation : Prop
  vesicleFusion : Prop
  intracellularTransport : Prop

structure MembraneTraffickingEvidence (M : MembraneTraffickingPackage) where
  endocytosisClosed : M.endocytosis
  exocytosisClosed : M.exocytosis
  vesicleFormationClosed : M.vesicleFormation
  vesicleFusionClosed : M.vesicleFusion
  intracellularTransportClosed : M.intracellularTransport

def MembraneTraffickingClosed (M : MembraneTraffickingPackage) : Prop :=
  M.endocytosis ∧ M.exocytosis ∧ M.vesicleFormation ∧ M.vesicleFusion ∧ M.intracellularTransport

theorem membrane_trafficking_closed_from_evidence (M : MembraneTraffickingPackage) (E : MembraneTraffickingEvidence M) : MembraneTraffickingClosed M := by
  exact And.intro E.endocytosisClosed
    (And.intro E.exocytosisClosed
      (And.intro E.vesicleFormationClosed
        (And.intro E.vesicleFusionClosed E.intracellularTransportClosed)))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse