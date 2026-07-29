import canonicalLaneMathlib.AdmissibleClass

/-!
# Recombination Checkpoint Package
-/

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure RecombinationCheckpointPackage where
  doubleStrandBreakFormation : Prop
  repairPathwayActivation : Prop
  crossoverNoncrossoverDecision : Prop
  checkpointSatisfaction : Prop

structure RecombinationCheckpointEvidence (R : RecombinationCheckpointPackage) where
  doubleStrandBreakFormationClosed : R.doubleStrandBreakFormation
  repairPathwayActivationClosed : R.repairPathwayActivation
  crossoverNoncrossoverDecisionClosed : R.crossoverNoncrossoverDecision
  checkpointSatisfactionClosed : R.checkpointSatisfaction

def RecombinationCheckpointClosed (R : RecombinationCheckpointPackage) : Prop :=
  R.doubleStrandBreakFormation ∧ R.repairPathwayActivation ∧ R.crossoverNoncrossoverDecision ∧ R.checkpointSatisfaction

theorem recombination_checkpoint_closed_from_evidence (R : RecombinationCheckpointPackage) (E : RecombinationCheckpointEvidence R) : RecombinationCheckpointClosed R := by
  exact And.intro E.doubleStrandBreakFormationClosed (And.intro E.repairPathwayActivationClosed (And.intro E.crossoverNoncrossoverDecisionClosed E.checkpointSatisfactionClosed))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse