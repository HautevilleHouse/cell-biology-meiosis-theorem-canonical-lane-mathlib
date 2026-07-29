import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MeiosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeiosisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
