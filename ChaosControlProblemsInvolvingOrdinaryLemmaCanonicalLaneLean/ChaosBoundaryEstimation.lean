import ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.RobustControlLMI

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure ChaosBoundaryEstimationPackage {P : OrdinaryLemmaPerturbationPackage}
    {L : LyapunovStabilityPackage P} {R : RobustControlLMIPackage L} where
  ultimateBoundDerived : Prop
  transientPerformance : Prop
  disturbanceAttenuation : Prop

structure ChaosBoundaryEstimationEvidence {P : OrdinaryLemmaPerturbationPackage}
    {L : LyapunovStabilityPackage P} {R : RobustControlLMIPackage L}
    (C : ChaosBoundaryEstimationPackage R) where
  ultimateBoundDerivedClosed : C.ultimateBoundDerived
  transientPerformanceClosed : C.transientPerformance
  disturbanceAttenuationClosed : C.disturbanceAttenuation

def ChaosBoundaryEstimationClosed {P : OrdinaryLemmaPerturbationPackage}
    {L : LyapunovStabilityPackage P} {R : RobustControlLMIPackage L}
    (C : ChaosBoundaryEstimationPackage R) : Prop :=
  C.ultimateBoundDerived ∧ C.transientPerformance ∧ C.disturbanceAttenuation

theorem chaos_boundary_estimation_closed_from_evidence
    {P : OrdinaryLemmaPerturbationPackage} {L : LyapunovStabilityPackage P}
    {R : RobustControlLMIPackage L} (C : ChaosBoundaryEstimationPackage R)
    (E : ChaosBoundaryEstimationEvidence C) : ChaosBoundaryEstimationClosed C := by
  exact And.intro E.ultimateBoundDerivedClosed
    (And.intro E.transientPerformanceClosed E.disturbanceAttenuationClosed)

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse