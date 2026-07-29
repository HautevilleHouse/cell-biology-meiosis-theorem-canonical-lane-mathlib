import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure MeioticDriveModel where
  alleleA : Type u
  alleleB : Type u
  distortionFactor : ℝ
  viableGametesProduced : Prop

structure MeioticDriveEvidence (M : MeioticDriveModel) where
  distortionFactorClosed : M.distortionFactor ≠ 0
  viableGametesProducedClosed : M.viableGametesProduced

def MeioticDriveClosed (M : MeioticDriveModel) : Prop :=
  M.distortionFactor ≠ 0 ∧ M.viableGametesProduced

theorem meiotic_drive_closed_from_evidence (M : MeioticDriveModel)
    (E : MeioticDriveEvidence M) : MeioticDriveClosed M := by
  exact And.intro E.distortionFactorClosed E.viableGametesProducedClosed

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse