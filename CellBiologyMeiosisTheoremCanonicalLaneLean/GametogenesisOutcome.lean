import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure GametogenesisOutcomePackage where
  reductionalDivision : Prop
  equationalDivision : Prop
  haploidCellFormation : Prop
  geneticDiversity : Prop
  gameteMaturation : Prop

structure GametogenesisOutcomeEvidence (G : GametogenesisOutcomePackage) where
  reductionalDivisionClosed : G.reductionalDivision
  equationalDivisionClosed : G.equationalDivision
  haploidCellFormationClosed : G.haploidCellFormation
  geneticDiversityClosed : G.geneticDiversity
  gameteMaturationClosed : G.gameteMaturation

def GametogenesisOutcomeClosed (G : GametogenesisOutcomePackage) : Prop :=
  G.reductionalDivision ∧ G.equationalDivision ∧ G.haploidCellFormation ∧
  G.geneticDiversity ∧ G.gameteMaturation

theorem gametogenesis_outcome_closed_from_evidence (G : GametogenesisOutcomePackage) (E : GametogenesisOutcomeEvidence G) :
    GametogenesisOutcomeClosed G := by
  exact And.intro E.reductionalDivisionClosed
    (And.intro E.equationalDivisionClosed
      (And.intro E.haploidCellFormationClosed
        (And.intro E.geneticDiversityClosed E.gameteMaturationClosed)))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse