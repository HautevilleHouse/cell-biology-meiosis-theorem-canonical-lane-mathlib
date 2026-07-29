import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure CellCycleRegulationPackage where
  premeioticSGphase : Prop
  meioticEntryTriggered : Prop
  homologousPairingCheckpoint : Prop
  metaphaseIArrest : Prop
  anaphaseIInitiation : Prop
  meiosisIIProgression : Prop

structure CellCycleRegulationEvidence (C : CellCycleRegulationPackage) where
  premeioticSGphaseClosed : C.premeioticSGphase
  meioticEntryTriggeredClosed : C.meioticEntryTriggered
  homologousPairingCheckpointClosed : C.homologousPairingCheckpoint
  metaphaseIArrestClosed : C.metaphaseIArrest
  anaphaseIInitiationClosed : C.anaphaseIInitiation
  meiosisIIProgressionClosed : C.meiosisIIProgression

def CellCycleRegulationClosed (C : CellCycleRegulationPackage) : Prop :=
  C.premeioticSGphase ∧ C.meioticEntryTriggered ∧ C.homologousPairingCheckpoint ∧ C.metaphaseIArrest ∧ C.anaphaseIInitiation ∧ C.meiosisIIProgression

theorem cell_cycle_regulation_closed_from_evidence (C : CellCycleRegulationPackage) (E : CellCycleRegulationEvidence C) : CellCycleRegulationClosed C := by
  exact And.intro E.premeioticSGphaseClosed (And.intro E.meioticEntryTriggeredClosed (And.intro E.homologousPairingCheckpointClosed (And.intro E.metaphaseIArrestClosed (And.intro E.anaphaseIInitiationClosed E.meiosisIIProgressionClosed))))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse