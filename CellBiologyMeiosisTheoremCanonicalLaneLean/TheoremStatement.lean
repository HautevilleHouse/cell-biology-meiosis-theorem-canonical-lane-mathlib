import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisTheoremCanonicalLaneLean

structure MeiosisAdmittedObject where
  chromosomePairing : Prop
  synapsis : Prop
  crossingOver : Prop
  chiasmataFormation : Prop
  homologousSeparation : Prop
  separationAnaphaseOne : Prop
  haploidFormation : Prop
  geneticVariation : Prop
  conclusion : geneticVariation

structure MeiosisEndgameState where
  object : MeiosisAdmittedObject

def MeiosisWitnessClosed (O : MeiosisAdmittedObject) : Prop :=
  O.geneticVariation

theorem meiosis_witness_closed_from_admitted (O : MeiosisAdmittedObject) :
    MeiosisWitnessClosed O := O.conclusion

end CellBiologyMeiosisTheoremCanonicalLaneLean
end HautevilleHouse