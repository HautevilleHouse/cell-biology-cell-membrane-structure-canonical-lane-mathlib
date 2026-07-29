import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureCanonicalLaneLean.MembraneAnalyticProof

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure FluidMosaicEvidenceTerms (C : FluidMosaicCertificate) where
  bilayerFluidityTerm : C.bilayerFluidity
  proteinMobilityTerm : C.proteinMobility
  lipidRaftsTerm : C.lipidRafts
  fluidMosaicClosed : FluidMosaicCertificateClosed C

def FluidMosaicCertificate.evidenceTerms (C : FluidMosaicCertificate) : FluidMosaicEvidenceTerms C :=
  { bilayerFluidityTerm := C.bilayerFluidityClosed
    proteinMobilityTerm := C.proteinMobilityClosed
    lipidRaftsTerm := C.lipidRaftsClosed
    fluidMosaicClosed := fluid_mosaic_certificate_closed C }

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse