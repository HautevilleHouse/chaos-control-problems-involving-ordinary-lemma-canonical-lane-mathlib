import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure ChaosSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChaosAdmittedObject where
  space : ChaosSpace
  flow : Flow ℝ carrier
  chaoticBehavior : Prop
  ordinaryLemma : Prop
  conclusion : chaoticBehavior ∨ ordinaryLemma

structure ChaosEndgameState where
  object : ChaosAdmittedObject

def ChaosWitnessClosed (O : ChaosAdmittedObject) : Prop :=
  O.chaoticBehavior ∨ O.ordinaryLemma

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse