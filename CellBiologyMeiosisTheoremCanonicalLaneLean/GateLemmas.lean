import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
