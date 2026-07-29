import ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.DomainPreliminaries

/-!
# Noncollapsing Package for Chaos Control
-/

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure NoncollapsingPackage where
  scaleInvariantBound : Prop
  controlScaleCompatibility : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  scaleInvariantBoundClosed : N.scaleInvariantBound
  controlScaleCompatibilityClosed : N.controlScaleCompatibility
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.scaleInvariantBound ∧ N.controlScaleCompatibility ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantBoundClosed
    (And.intro E.controlScaleCompatibilityClosed E.blowupLimitNoncollapsedClosed)

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse