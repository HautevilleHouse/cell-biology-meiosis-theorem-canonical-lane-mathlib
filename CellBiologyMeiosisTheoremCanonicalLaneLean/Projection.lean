import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def meiosisProjection : Projection MeiosisEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem meiosis_projection_idempotent (x : MeiosisEndgameState) :
    meiosisProjection.toFun (meiosisProjection.toFun x) = meiosisProjection.toFun x := by
  exact meiosisProjection.idempotent x

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
