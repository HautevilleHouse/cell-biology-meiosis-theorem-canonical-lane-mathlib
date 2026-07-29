import HautevilleHouse.CellBiologyMeiosisTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeiosisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse
