import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure ControlSystem where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace → controlSpace → stateSpace
  equilibrium : stateSpace
  stabilityMargin : Prop
  chaosBound : Prop

structure ControlSystemEvidence (S : ControlSystem) where
  stabilityMarginClosed : S.stabilityMargin
  chaosBoundClosed : S.chaosBound

def ControlSystemClosed (S : ControlSystem) : Prop :=
  S.stabilityMargin ∧ S.chaosBound

theorem control_system_closed_from_evidence (S : ControlSystem) (E : ControlSystemEvidence S) :
    ControlSystemClosed S := by
  exact And.intro E.stabilityMarginClosed E.chaosBoundClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse