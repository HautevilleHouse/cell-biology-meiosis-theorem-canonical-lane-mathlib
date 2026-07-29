import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure MeioticDriverGenesPackage where
  segregationDistorter : Prop
  transmissionRatioDistortion : Prop
  fitnessCost : Prop
  evolutionaryConflict : Prop
  populationDynamicsImpact : Prop

structure MeioticDriverGenesEvidence (M : MeioticDriverGenesPackage) where
  segregationDistorterClosed : M.segregationDistorter
  transmissionRatioDistortionClosed : M.transmissionRatioDistortion
  fitnessCostClosed : M.fitnessCost
  evolutionaryConflictClosed : M.evolutionaryConflict
  populationDynamicsImpactClosed : M.populationDynamicsImpact

def MeioticDriverGenesClosed (M : MeioticDriverGenesPackage) : Prop :=
  M.segregationDistorter ∧ M.transmissionRatioDistortion ∧ M.fitnessCost ∧ M.evolutionaryConflict ∧ M.populationDynamicsImpact

theorem meiotic_driver_genes_closed_from_evidence (M : MeioticDriverGenesPackage) (E : MeioticDriverGenesEvidence M) : MeioticDriverGenesClosed M := by
  exact And.intro E.segregationDistorterClosed (And.intro E.transmissionRatioDistortionClosed (And.intro E.fitnessCostClosed (And.intro E.evolutionaryConflictClosed E.populationDynamicsImpactClosed)))

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse