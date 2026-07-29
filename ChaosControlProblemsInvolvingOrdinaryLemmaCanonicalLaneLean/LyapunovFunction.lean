import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.ControlSystem

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure LyapunovFunction (S : ControlSystem) where
  domain : Set S.stateSpace
  functionValue : S.stateSpace → ℝ
  positiveDefinite : ∀ x : S.domain, functionValue x > 0
  decreasingAlongFlow : ∀ x : S.domain, functionValue (S.dynamics x (default : S.controlSpace)) ≤ functionValue x
  equilibriumStable : functionValue S.equilibrium = 0

structure LyapunovEvidence {S : ControlSystem} (L : LyapunovFunction S) where
  positiveDefiniteClosed : L.positiveDefinite
  decreasingAlongFlowClosed : L.decreasingAlongFlow
  equilibriumStableClosed : L.equilibriumStable

def LyapunovClosed {S : ControlSystem} (L : LyapunovFunction S) : Prop :=
  L.positiveDefinite ∧ L.decreasingAlongFlow ∧ L.equilibriumStable

theorem lyapunov_closed_from_evidence {S : ControlSystem} (L : LyapunovFunction S) (E : LyapunovEvidence L) :
    LyapunovClosed L := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.decreasingAlongFlowClosed E.equilibriumStableClosed)

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse