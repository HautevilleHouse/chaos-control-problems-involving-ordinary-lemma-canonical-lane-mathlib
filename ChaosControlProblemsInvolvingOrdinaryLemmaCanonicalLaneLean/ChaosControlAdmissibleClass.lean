import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure OrdinaryLemmaObject where
  lemmaStatement : Prop
  chaosParameter : Type
  controlInput : Type
  stabilityCondition : Prop
  conclusion : stabilityCondition

structure AdmittedObject where
  object : OrdinaryLemmaObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : AdmittedObject
  bridgeClosed : Prop
  gateClosed : Prop
  bridgeTerm : bridgeClosed
  gateTerm : gateClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse