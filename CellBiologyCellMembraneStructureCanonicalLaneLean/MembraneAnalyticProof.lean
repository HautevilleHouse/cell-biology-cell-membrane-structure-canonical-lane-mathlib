import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureCanonicalLaneLean.MembranesBasicObjects
import HautevilleHouse.CellBiologyCellMembraneStructureCanonicalLaneLean.MembraneStructureEvidence

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure FluidMosaicCertificate where
  bilayerFluidity : Prop
  proteinMobility : Prop
  lipidRafts : Prop
  bilayerFluidityClosed : bilayerFluidity
  proteinMobilityClosed : proteinMobility
  lipidRaftsClosed : lipidRafts

def FluidMosaicCertificateClosed (C : FluidMosaicCertificate) : Prop :=
  C.bilayerFluidity ∧ C.proteinMobility ∧ C.lipidRafts

theorem fluid_mosaic_certificate_closed (C : FluidMosaicCertificate) : FluidMosaicCertificateClosed C :=
  And.intro C.bilayerFluidityClosed (And.intro C.proteinMobilityClosed C.lipidRaftsClosed)

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse