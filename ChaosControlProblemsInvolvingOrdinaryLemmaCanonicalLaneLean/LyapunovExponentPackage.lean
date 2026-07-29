import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure LyapunovExponentPackage where
  vectorField : Type u
  flowMap : Type v
  lyapunovExponent : ℝ
  positiveExponent : Prop
  stabilityAnalysis : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  positiveExponentClosed : L.positiveExponent
  stabilityAnalysisClosed : L.stabilityAnalysis

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.positiveExponent ∧ L.stabilityAnalysis

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) :
    LyapunovExponentClosed L := by
  exact And.intro E.positiveExponentClosed E.stabilityAnalysisClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse