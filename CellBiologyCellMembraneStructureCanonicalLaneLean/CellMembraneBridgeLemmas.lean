import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

open HautevilleHouse.CellBiologyCellMembraneStructureCanonicalLaneLean

def bridgeClosed (A : CellMembraneAdmissibleClass) : Prop :=
  CellMembraneWitnessClosed A.object

theorem bridge_from_admissible_class (A : CellMembraneAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
