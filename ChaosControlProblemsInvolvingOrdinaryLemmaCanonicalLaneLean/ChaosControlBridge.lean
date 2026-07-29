import canonicalLaneMathlib.AdmissibleClass
import CanonicalLaneMathlibCore
import HautevilleHouse.ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.ChaosControlAdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def chaosProjection : Projection AdmittedObject := {
  toFun := λ x => x,
  idempotent := by
    intro x
    rfl
}

theorem chaos_projection_idempotent (x : AdmittedObject) : chaosProjection.toFun (chaosProjection.toFun x) = chaosProjection.toFun x := by
  exact chaosProjection.idempotent x

def bridgeClosed (A : AdmissibleClass) : Prop := A.bridgeClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.bridgeTerm

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse