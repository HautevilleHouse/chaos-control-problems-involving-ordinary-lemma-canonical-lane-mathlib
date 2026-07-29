import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.ChaosControlAdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop := A.gateClosed

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateTerm

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse