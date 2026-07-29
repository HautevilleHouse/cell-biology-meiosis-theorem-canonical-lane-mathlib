import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure GameteFormationPackage where
  reductionalDivision : Prop
  equationalDivision : Prop
  haploidCellGeneration : Prop
  geneticDiversification : Prop
  gameteMaturation : Prop

structure GameteFormationEvidence (G : GameteFormationPackage) where
  reductionalDivisionClosed : G.reductionalDivision
  equationalDivisionClosed : G.equationalDivision
  haploidCellGenerationClosed : G.haploidCellGeneration
  geneticDiversificationClosed : G.geneticDiversification
  gameteMaturationClosed : G.gameteMaturation

def GameteFormationClosed (G : GameteFormationPackage) : Prop :=
  G.reductionalDivision ∧ G.equationalDivision ∧ G.haploidCellGeneration ∧ G.geneticDiversification ∧ G.gameteMaturation

theorem gamete_formation_closed_from_evidence (G : GameteFormationPackage) (E : GameteFormationEvidence G) : GameteFormationClosed G := by
  exact And.intro E.reductionalDivisionClosed (And.intro E.equationalDivisionClosed (And.intro E.haploidCellGenerationClosed (And.intro E.geneticDiversificationClosed E.gameteMaturationClosed)))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse