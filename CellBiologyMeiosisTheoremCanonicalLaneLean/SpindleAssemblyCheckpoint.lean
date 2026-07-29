import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure SpindleAssemblyCheckpointPackage where
  spindlePoleBodyDuplication : Prop
  microtubuleAttachment : Prop
  tensionSensing : Prop
  anaphasePromotingComplex : Prop
  separaseActivation : Prop

structure SpindleAssemblyCheckpointEvidence (S : SpindleAssemblyCheckpointPackage) where
  spindlePoleBodyDuplicationClosed : S.spindlePoleBodyDuplication
  microtubuleAttachmentClosed : S.microtubuleAttachment
  tensionSensingClosed : S.tensionSensing
  anaphasePromotingComplexClosed : S.anaphasePromotingComplex
  separaseActivationClosed : S.separaseActivation

def SpindleAssemblyCheckpointClosed (S : SpindleAssemblyCheckpointPackage) : Prop :=
  S.spindlePoleBodyDuplication ∧ S.microtubuleAttachment ∧ S.tensionSensing ∧ S.anaphasePromotingComplex ∧ S.separaseActivation

theorem spindle_assembly_checkpoint_closed_from_evidence (S : SpindleAssemblyCheckpointPackage) (E : SpindleAssemblyCheckpointEvidence S) : SpindleAssemblyCheckpointClosed S := by
  exact And.intro E.spindlePoleBodyDuplicationClosed (And.intro E.microtubuleAttachmentClosed (And.intro E.tensionSensingClosed (And.intro E.anaphasePromotingComplexClosed E.separaseActivationClosed)))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse