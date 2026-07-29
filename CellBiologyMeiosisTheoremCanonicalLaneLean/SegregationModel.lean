import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure SegregationModel where
  chromosomePair : HomologPair
  independentAssortment : Prop
  segregationRatio : ℝ

structure SegregationEvidence (S : SegregationModel) where
  independentAssortmentClosed : S.independentAssortment
  segregationRatioClosed : S.segregationRatio = 0.5

def SegregationClosed (S : SegregationModel) : Prop :=
  S.independentAssortment ∧ S.segregationRatio = 0.5

theorem segregation_closed_from_evidence (S : SegregationModel)
    (E : SegregationEvidence S) : SegregationClosed S := by
  exact And.intro E.independentAssortmentClosed E.segregationRatioClosed

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse