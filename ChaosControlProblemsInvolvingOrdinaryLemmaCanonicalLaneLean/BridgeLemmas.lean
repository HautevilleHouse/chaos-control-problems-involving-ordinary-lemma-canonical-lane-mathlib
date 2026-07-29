import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.stabilityMargin

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse