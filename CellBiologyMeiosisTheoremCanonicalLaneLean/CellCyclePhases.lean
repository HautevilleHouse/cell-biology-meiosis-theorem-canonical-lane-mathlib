import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure CellCyclePhasePackage where
  interphase : Prop
  prophaseI : Prop
  metaphaseI : Prop
  anaphaseI : Prop
  telophaseI : Prop
  cytokinesisI : Prop
  prophaseII : Prop
  metaphaseII : Prop
  anaphaseII : Prop
  telophaseII : Prop
  cytokinesisII : Prop

structure CellCyclePhaseEvidence (P : CellCyclePhasePackage) where
  interphaseClosed : P.interphase
  prophaseIClosed : P.prophaseI
  metaphaseIClosed : P.metaphaseI
  anaphaseIClosed : P.anaphaseI
  telophaseIClosed : P.telophaseI
  cytokinesisIClosed : P.cytokinesisI
  prophaseIIClosed : P.prophaseII
  metaphaseIIClosed : P.metaphaseII
  anaphaseIIClosed : P.anaphaseII
  telophaseIIClosed : P.telophaseII
  cytokinesisIIClosed : P.cytokinesisII

def CellCyclePhaseClosed (P : CellCyclePhasePackage) : Prop :=
  P.interphase ∧ P.prophaseI ∧ P.metaphaseI ∧ P.anaphaseI ∧ P.telophaseI ∧
  P.cytokinesisI ∧ P.prophaseII ∧ P.metaphaseII ∧ P.anaphaseII ∧ P.telophaseII ∧
  P.cytokinesisII

theorem cell_cycle_phase_closed_from_evidence (P : CellCyclePhasePackage) (E : CellCyclePhaseEvidence P) :
    CellCyclePhaseClosed P := by
  exact And.intro E.interphaseClosed
    (And.intro E.prophaseIClosed
      (And.intro E.metaphaseIClosed
        (And.intro E.anaphaseIClosed
          (And.intro E.telophaseIClosed
            (And.intro E.cytokinesisIClosed
              (And.intro E.prophaseIIClosed
                (And.intro E.metaphaseIIClosed
                  (And.intro E.anaphaseIIClosed
                    (And.intro E.telophaseIIClosed E.cytokinesisIIClosed)))))))))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse