import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure LipidBilayerPackage where
  bilayerExists : Prop
  hydrophobicEffect : Prop
  selfAssembly : Prop
  fluidMosaicProperties : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  bilayerExistsClosed : L.bilayerExists
  hydrophobicEffectClosed : L.hydrophobicEffect
  selfAssemblyClosed : L.selfAssembly
  fluidMosaicPropertiesClosed : L.fluidMosaicProperties

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.bilayerExists ∧ L.hydrophobicEffect ∧ L.selfAssembly ∧ L.fluidMosaicProperties

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) : LipidBilayerClosed L := by
  exact And.intro E.bilayerExistsClosed
    (And.intro E.hydrophobicEffectClosed
      (And.intro E.selfAssemblyClosed E.fluidMosaicPropertiesClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse