import ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Preliminary Lemmas for Chaos Control
-/

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

theorem ordinary_lemma_implies_stability (A : AdmissibleClass) (h : OrdinaryLemmaAdmissible A.object) :
    StabilityProperty A.object := by
  -- Proof sketch: By the ordinary lemma, admissible implies stability
  sorry

theorem stability_implies_control_reachable (O : ChaosAdmittedObject) (h : StabilityProperty O) :
    ControlReachable O := by
  -- Proof sketch: stability plus system dynamics gives reachability
  sorry

theorem ordinary_lemma_to_control (A : AdmissibleClass) (h : OrdinaryLemmaAdmissible A.object) :
    ControlReachable A.object := by
  apply stability_implies_control_reachable
  exact ordinary_lemma_implies_stability A h

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse