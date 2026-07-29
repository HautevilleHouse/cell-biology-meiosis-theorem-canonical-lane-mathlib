import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure MeioticRegulationPackage where
  entryIntoMeiosis : Prop
  recombinationInitiationControl : Prop
  meioticProgressionCheckpoint : Prop
  meioticSilencing : Prop

structure MeioticRegulationEvidence (M : MeioticRegulationPackage) where
  entryIntoMeiosisClosed : M.entryIntoMeiosis
  recombinationInitiationControlClosed : M.recombinationInitiationControl
  meioticProgressionCheckpointClosed : M.meioticProgressionCheckpoint
  meioticSilencingClosed : M.meioticSilencing

def MeioticRegulationClosed (M : MeioticRegulationPackage) : Prop :=
  M.entryIntoMeiosis ∧ M.recombinationInitiationControl ∧
  M.meioticProgressionCheckpoint ∧ M.meioticSilencing

theorem meiotic_regulation_closed_from_evidence (M : MeioticRegulationPackage) (E : MeioticRegulationEvidence M) :
    MeioticRegulationClosed M := by
  exact And.intro E.entryIntoMeiosisClosed
    (And.intro E.recombinationInitiationControlClosed
      (And.intro E.meioticProgressionCheckpointClosed E.meioticSilencingClosed))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse