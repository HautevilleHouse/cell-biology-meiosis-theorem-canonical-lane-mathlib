import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure ProphaseIStageEvidence where
  leptotene : Prop
  zygotene : Prop
  pachytene : Prop
  diplotene : Prop
  diakinesis : Prop
  checkpointSatisfied : Prop

def ProphaseIStageClosed (E : ProphaseIStageEvidence) : Prop :=
  E.leptotene ∧ E.zygotene ∧ E.pachytene ∧ E.diplotene ∧ E.diakinesis ∧ E.checkpointSatisfied

theorem prophase_i_stage_closed_from_evidence (E : ProphaseIStageEvidence) (h1 : E.leptotene) (h2 : E.zygotene) (h3 : E.pachytene) (h4 : E.diplotene) (h5 : E.diakinesis) (h6 : E.checkpointSatisfied) : ProphaseIStageClosed E := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 h6))))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse