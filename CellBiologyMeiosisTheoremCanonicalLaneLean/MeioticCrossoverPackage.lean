import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure CrossoverRegulationEvidence where
  dsbFormation : Prop
  strandExchange : Prop
  resolutionProducts : Prop
  sporePattern : Prop

def CrossoverRegulationClosed (E : CrossoverRegulationEvidence) : Prop :=
  E.dsbFormation ∧ E.strandExchange ∧ E.resolutionProducts ∧ E.sporePattern

theorem crossover_regulation_closed_from_evidence (E : CrossoverRegulationEvidence) (h1 : E.dsbFormation) (h2 : E.strandExchange) (h3 : E.resolutionProducts) (h4 : E.sporePattern) : CrossoverRegulationClosed E := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse