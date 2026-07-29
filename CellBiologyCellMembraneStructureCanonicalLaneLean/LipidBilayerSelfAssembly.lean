import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureCanonicalLaneLean

structure LipidBilayerSelfAssemblyPackage where
  amphiphilicMolecules : Type u
  hydrophobicEffect : Prop
  bilayerFormation : Prop
  sealedCompartment : Prop
  fluidMosaicModel : Prop

structure LipidBilayerSelfAssemblyEvidence (P : LipidBilayerSelfAssemblyPackage) where
  hydrophobicEffectClosed : P.hydrophobicEffect
  bilayerFormationClosed : P.bilayerFormation
  sealedCompartmentClosed : P.sealedCompartment
  fluidMosaicModelClosed : P.fluidMosaicModel

def LipidBilayerSelfAssemblyClosed (P : LipidBilayerSelfAssemblyPackage) : Prop :=
  P.hydrophobicEffect ∧ P.bilayerFormation ∧ P.sealedCompartment ∧ P.fluidMosaicModel

theorem lipid_bilayer_self_assembly_closed_from_evidence
    (P : LipidBilayerSelfAssemblyPackage) (E : LipidBilayerSelfAssemblyEvidence P) :
    LipidBilayerSelfAssemblyClosed P := by
  exact And.intro E.hydrophobicEffectClosed
    (And.intro E.bilayerFormationClosed
      (And.intro E.sealedCompartmentClosed E.fluidMosaicModelClosed))

end CellBiologyCellMembraneStructureCanonicalLaneLean
end HautevilleHouse
