import canonicalLaneMathlib.AdmissibleClass

/-!
# Chromosome Segregation Package
-/

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure ChromosomeSegregationPackage where
  spindleAttachment : Prop
  biorientation : Prop
  tensionSensing : Prop
  anaphaseOnset : Prop

structure ChromosomeSegregationEvidence (S : ChromosomeSegregationPackage) where
  spindleAttachmentClosed : S.spindleAttachment
  biorientationClosed : S.biorientation
  tensionSensingClosed : S.tensionSensing
  anaphaseOnsetClosed : S.anaphaseOnset

def ChromosomeSegregationClosed (S : ChromosomeSegregationPackage) : Prop :=
  S.spindleAttachment ∧ S.biorientation ∧ S.tensionSensing ∧ S.anaphaseOnset

theorem chromosome_segregation_closed_from_evidence (S : ChromosomeSegregationPackage) (E : ChromosomeSegregationEvidence S) : ChromosomeSegregationClosed S := by
  exact And.intro E.spindleAttachmentClosed (And.intro E.biorientationClosed (And.intro E.tensionSensingClosed E.anaphaseOnsetClosed))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse