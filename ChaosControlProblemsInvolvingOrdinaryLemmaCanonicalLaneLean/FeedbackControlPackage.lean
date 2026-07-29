import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure FeedbackControlPackage where
  controlLaw : Type u
  plantDynamics : Type v
  stabilization : Prop
  robustness : Prop

structure FeedbackControlEvidence (F : FeedbackControlPackage) where
  stabilizationClosed : F.stabilization
  robustnessClosed : F.robustness

def FeedbackControlClosed (F : FeedbackControlPackage) : Prop :=
  F.stabilization ∧ F.robustness

theorem feedback_control_closed_from_evidence (F : FeedbackControlPackage) (E : FeedbackControlEvidence F) :
    FeedbackControlClosed F := by
  exact And.intro E.stabilizationClosed E.robustnessClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse