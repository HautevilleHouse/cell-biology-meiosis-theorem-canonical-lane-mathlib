import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure RecombinationPackage where
  doubleStrandBreak : Prop
  resection : Prop
  strandInvasion : Prop
  dLoopFormation : Prop
  dnaSynthesis : Prop
  secondEndCapture : Prop
  holidayJunctionFormation : Prop
  heteroduplexExtension : Prop
  mismatchRepair : Prop
  crossoverResolution : Prop
  nonCrossoverResolution : Prop

structure RecombinationEvidence (R : RecombinationPackage) where
  doubleStrandBreakClosed : R.doubleStrandBreak
  resectionClosed : R.resection
  strandInvasionClosed : R.strandInvasion
  dLoopFormationClosed : R.dLoopFormation
  dnaSynthesisClosed : R.dnaSynthesis
  secondEndCaptureClosed : R.secondEndCapture
  holidayJunctionFormationClosed : R.holidayJunctionFormation
  heteroduplexExtensionClosed : R.heteroduplexExtension
  mismatchRepairClosed : R.mismatchRepair
  crossoverResolutionClosed : R.crossoverResolution
  nonCrossoverResolutionClosed : R.nonCrossoverResolution

def RecombinationClosed (R : RecombinationPackage) : Prop :=
  R.doubleStrandBreak ∧ R.resection ∧ R.strandInvasion ∧
  R.dLoopFormation ∧ R.dnaSynthesis ∧ R.secondEndCapture ∧
  R.holidayJunctionFormation ∧ R.heteroduplexExtension ∧
  R.mismatchRepair ∧ R.crossoverResolution ∧ R.nonCrossoverResolution

theorem recombination_closed_from_evidence (R : RecombinationPackage) (E : RecombinationEvidence R) :
    RecombinationClosed R := by
  exact And.intro E.doubleStrandBreakClosed
    (And.intro E.resectionClosed
      (And.intro E.strandInvasionClosed
        (And.intro E.dLoopFormationClosed
          (And.intro E.dnaSynthesisClosed
            (And.intro E.secondEndCaptureClosed
              (And.intro E.holidayJunctionFormationClosed
                (And.intro E.heteroduplexExtensionClosed
                  (And.intro E.mismatchRepairClosed
                    (And.intro E.crossoverResolutionClosed E.nonCrossoverResolutionClosed)))))))))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse