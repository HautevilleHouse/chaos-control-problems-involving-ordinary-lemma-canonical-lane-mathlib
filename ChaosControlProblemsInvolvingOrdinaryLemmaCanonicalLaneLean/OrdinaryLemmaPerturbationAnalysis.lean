import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure OrdinaryLemmaPerturbationPackage where
  lyapunovFunction : Type
  dissipationInequality : Prop
  uniformBounds : Prop

structure OrdinaryLemmaPerturbationEvidence (P : OrdinaryLemmaPerturbationPackage) where
  dissipationInequalityClosed : P.dissipationInequality
  uniformBoundsClosed : P.uniformBounds

def OrdinaryLemmaPerturbationClosed (P : OrdinaryLemmaPerturbationPackage) : Prop :=
  P.dissipationInequality ∧ P.uniformBounds

theorem ordinary_lemma_perturbation_closed_from_evidence
    (P : OrdinaryLemmaPerturbationPackage) (E : OrdinaryLemmaPerturbationEvidence P) :
    OrdinaryLemmaPerturbationClosed P := by
  exact And.intro E.dissipationInequalityClosed E.uniformBoundsClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse