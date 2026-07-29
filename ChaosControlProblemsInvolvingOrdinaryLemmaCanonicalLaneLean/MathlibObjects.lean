import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OrdinaryDifferentialEquation where
  stateSpace : Type
  timeDomain : Type
  vectorField : stateSpace → stateSpace
  solution : Type
  existenceUniqueness : Prop

structure LyapunovFunction where
  domain : Type
  functionVal : domain → ℝ
  positivity : Prop
  derivativeNegativity : Prop
  conclusion : derivativeNegativity

structure ControlSystem where
  stateSpace : Type
  controlSpace : Type
  dynamics : stateSpace → controlSpace → stateSpace
  controllability : Prop

structure StabilityCertificate where
  system : ControlSystem
  lyapunov : LyapunovFunction
  stabilityAssured : Prop

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse