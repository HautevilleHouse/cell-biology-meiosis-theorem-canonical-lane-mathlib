import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure ChromosomePairPackage where
  homologousChromosomes : Prop
  synapsis : Prop
  sisterChromatids : Prop
  centromereAttachment : Prop

def ChromosomePairClosed (C : ChromosomePairPackage) : Prop :=
  C.homologousChromosomes ∧ C.synapsis ∧ C.sisterChromatids ∧ C.centromereAttachment

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
