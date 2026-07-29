import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure ChaosControlAdmittedObject where
  systemState : Type
  perturbationBound : ℝ
  controlLaw : Type
  stabilityMargin : Prop
  conclusion : stabilityMargin

structure AdmissibleClass where
  object : ChaosControlAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse