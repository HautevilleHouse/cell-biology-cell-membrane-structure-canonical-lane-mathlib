import CellBiologyCellMembraneStructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MembraneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
