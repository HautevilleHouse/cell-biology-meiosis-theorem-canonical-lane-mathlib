import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure SpindleCheckpointPackage where
  unattachedKinetochoreDetection : Prop
  mad2Activation : Prop
  cdc20Inhibition : Prop
  anaphasePromotingComplexInhibition : Prop
  tensionBasedCheckpoint : Prop
  checkpointSatisfaction : Prop
  subsequentAnaphase : Prop

structure SpindleCheckpointEvidence (S : SpindleCheckpointPackage) where
  unattachedKinetochoreDetectionClosed : S.unattachedKinetochoreDetection
  mad2ActivationClosed : S.mad2Activation
  cdc20InhibitionClosed : S.cdc20Inhibition
  anaphasePromotingComplexInhibitionClosed : S.anaphasePromotingComplexInhibition
  tensionBasedCheckpointClosed : S.tensionBasedCheckpoint
  checkpointSatisfactionClosed : S.checkpointSatisfaction
  subsequentAnaphaseClosed : S.subsequentAnaphase

def SpindleCheckpointClosed (S : SpindleCheckpointPackage) : Prop :=
  S.unattachedKinetochoreDetection ∧ S.mad2Activation ∧ S.cdc20Inhibition ∧
  S.anaphasePromotingComplexInhibition ∧ S.tensionBasedCheckpoint ∧
  S.checkpointSatisfaction ∧ S.subsequentAnaphase

theorem spindle_checkpoint_closed_from_evidence (S : SpindleCheckpointPackage) (E : SpindleCheckpointEvidence S) :
    SpindleCheckpointClosed S := by
  exact And.intro E.unattachedKinetochoreDetectionClosed
    (And.intro E.mad2ActivationClosed
      (And.intro E.cdc20InhibitionClosed
        (And.intro E.anaphasePromotingComplexInhibitionClosed
          (And.intro E.tensionBasedCheckpointClosed
            (And.intro E.checkpointSatisfactionClosed E.subsequentAnaphaseClosed)))))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse