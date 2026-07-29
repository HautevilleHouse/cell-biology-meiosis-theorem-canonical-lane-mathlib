import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.ChiasmataFormation

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure HomologousRecombinationPackage (C : ChiasmataFormationPackage) where
  crossoverEvent : Prop
  nonCrossoverEvent : Prop
  geneConversion : Prop
  resolution : Prop

def HomologousRecombinationClosed (H : HomologousRecombinationPackage) : Prop :=
  H.crossoverEvent ∧ H.nonCrossoverEvent ∧ H.geneConversion ∧ H.resolution

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
