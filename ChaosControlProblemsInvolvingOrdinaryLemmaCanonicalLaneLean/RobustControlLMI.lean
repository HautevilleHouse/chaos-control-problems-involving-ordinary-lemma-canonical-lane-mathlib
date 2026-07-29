import ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.LyapunovStabilityAnalysis

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure RobustControlLMIPackage {P : OrdinaryLemmaPerturbationPackage}
    {L : LyapunovStabilityPackage P} where
  linearMatrixInequality : Prop
  feedbackGain : Type
  closedLoopStability : Prop

structure RobustControlLMIEvidence {P : OrdinaryLemmaPerturbationPackage}
    {L : LyapunovStabilityPackage P} (R : RobustControlLMIPackage L) where
  linearMatrixInequalityClosed : R.linearMatrixInequality
  closedLoopStabilityClosed : R.closedLoopStability

def RobustControlLMIClosed {P : OrdinaryLemmaPerturbationPackage}
    {L : LyapunovStabilityPackage P} (R : RobustControlLMIPackage L) : Prop :=
  R.linearMatrixInequality ∧ R.closedLoopStability

theorem robust_control_lmi_closed_from_evidence
    {P : OrdinaryLemmaPerturbationPackage} {L : LyapunovStabilityPackage P}
    (R : RobustControlLMIPackage L) (E : RobustControlLMIEvidence R) :
    RobustControlLMIClosed R := by
  exact And.intro E.linearMatrixInequalityClosed E.closedLoopStabilityClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse