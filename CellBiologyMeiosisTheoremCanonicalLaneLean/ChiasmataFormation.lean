import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure ChiasmataFormationPackage (C : ChromosomePairPackage) where
  homologousRecombination : Prop
  crossoverPoints : Nat
  chiasmataCount : Nat
  synaptonemalComplexFormed : Prop

def ChiasmataFormationClosed (C : ChiasmataFormationPackage) : Prop :=
  C.homologousRecombination ∧ C.chiasmataCount > 0 ∧ C.synaptonemalComplexFormed

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
