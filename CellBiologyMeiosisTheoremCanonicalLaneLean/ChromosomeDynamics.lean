import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure ChromosomeDynamicsPackage where
  homologousPairing : Prop
  synapsisFormation : Prop
  crossingOver : Prop
  chiasmataFormation : Prop
  homologousSeparation : Prop
  sisterChromatidCohesion : Prop
  sisterChromatidSeparation : Prop
  spindleAttachment : Prop

structure ChromosomeDynamicsEvidence (C : ChromosomeDynamicsPackage) where
  homologousPairingClosed : C.homologousPairing
  synapsisFormationClosed : C.synapsisFormation
  crossingOverClosed : C.crossingOver
  chiasmataFormationClosed : C.chiasmataFormation
  homologousSeparationClosed : C.homologousSeparation
  sisterChromatidCohesionClosed : C.sisterChromatidCohesion
  sisterChromatidSeparationClosed : C.sisterChromatidSeparation
  spindleAttachmentClosed : C.spindleAttachment

def ChromosomeDynamicsClosed (C : ChromosomeDynamicsPackage) : Prop :=
  C.homologousPairing ∧ C.synapsisFormation ∧ C.crossingOver ∧
  C.chiasmataFormation ∧ C.homologousSeparation ∧ C.sisterChromatidCohesion ∧
  C.sisterChromatidSeparation ∧ C.spindleAttachment

theorem chromosome_dynamics_closed_from_evidence (C : ChromosomeDynamicsPackage) (E : ChromosomeDynamicsEvidence C) :
    ChromosomeDynamicsClosed C := by
  exact And.intro E.homologousPairingClosed
    (And.intro E.synapsisFormationClosed
      (And.intro E.crossingOverClosed
        (And.intro E.chiasmataFormationClosed
          (And.intro E.homologousSeparationClosed
            (And.intro E.sisterChromatidCohesionClosed
              (And.intro E.sisterChromatidSeparationClosed E.spindleAttachmentClosed))))))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse