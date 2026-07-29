import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure ChaosDynamicsPackage where
  stateSpace : Type u
  parameterSpace : Type v
  dynamics : stateSpace → parameterSpace → stateSpace
  sensitivity : Prop
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop

structure ChaosDynamicsEvidence (C : ChaosDynamicsPackage) where
  sensitivityClosed : C.sensitivity
  topologicalTransitivityClosed : C.topologicalTransitivity
  densePeriodicPointsClosed : C.densePeriodicPoints

def ChaosDynamicsClosed (C : ChaosDynamicsPackage) : Prop :=
  C.sensitivity ∧ C.topologicalTransitivity ∧ C.densePeriodicPoints

theorem chaos_dynamics_closed_from_evidence (C : ChaosDynamicsPackage) (E : ChaosDynamicsEvidence C) :
    ChaosDynamicsClosed C := by
  exact And.intro E.sensitivityClosed (And.intro E.topologicalTransitivityClosed E.densePeriodicPointsClosed)

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse