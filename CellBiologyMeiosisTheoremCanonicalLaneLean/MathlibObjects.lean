import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MeiosisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MeiosisAdmittedObject where
  space : MeiosisSpace
  meioticDivision : Prop
  chromosomeNumber : Nat
  reductionalDivision : Prop
  equationalDivision : Prop
  conclusion : reductionalDivision ∧ equationalDivision ∧ chromosomeNumber > 0

def MeiosisWitnessClosed (O : MeiosisAdmittedObject) : Prop :=
  O.reductionalDivision ∧ O.equationalDivision ∧ O.chromosomeNumber > 0

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
