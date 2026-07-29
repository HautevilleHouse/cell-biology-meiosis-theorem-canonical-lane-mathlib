import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure NondisjunctionEvidence where
  anaphaseI : Prop
  anaphaseII : Prop
  reductionalDivisionFidelity : Prop
  equationalDivisionFidelity : Prop

def NondisjunctionFree (E : NondisjunctionEvidence) : Prop :=
  E.anaphaseI ∧ E.anaphaseII ∧ E.reductionalDivisionFidelity ∧ E.equationalDivisionFidelity

theorem nondisjunction_free_from_evidence (E : NondisjunctionEvidence) (h1 : E.anaphaseI) (h2 : E.anaphaseII) (h3 : E.reductionalDivisionFidelity) (h4 : E.equationalDivisionFidelity) : NondisjunctionFree E := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse