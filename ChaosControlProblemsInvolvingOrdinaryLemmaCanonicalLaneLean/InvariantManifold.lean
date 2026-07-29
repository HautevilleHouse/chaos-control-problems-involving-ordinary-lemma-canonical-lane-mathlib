import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure InvariantManifoldPackage where
  manifold : Type u
  tangentBasis : Type v
  invarianceCondition : Prop
  reductionToLowerDimension : Prop

def InvariantManifoldClosed (I : InvariantManifoldPackage) : Prop :=
  I.invarianceCondition ∧ I.reductionToLowerDimension

theorem invariant_manifold_closed_from_evidence (I : InvariantManifoldPackage) (h1 : I.invarianceCondition) (h2 : I.reductionToLowerDimension) :
    InvariantManifoldClosed I := by
  exact And.intro h1 h2

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse