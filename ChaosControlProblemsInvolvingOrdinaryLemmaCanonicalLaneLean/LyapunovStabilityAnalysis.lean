import ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean.OrdinaryLemmaPerturbationAnalysis

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure LyapunovStabilityPackage {P : OrdinaryLemmaPerturbationPackage} where
  lyapunovFunctionDefined : Prop
  derivativeNegativeDefinite : Prop
  regionOfAttraction : Prop

structure LyapunovStabilityEvidence {P : OrdinaryLemmaPerturbationPackage}
    (L : LyapunovStabilityPackage P) where
  lyapunovFunctionDefinedClosed : L.lyapunovFunctionDefined
  derivativeNegativeDefiniteClosed : L.derivativeNegativeDefinite
  regionOfAttractionClosed : L.regionOfAttraction

def LyapunovStabilityClosed {P : OrdinaryLemmaPerturbationPackage}
    (L : LyapunovStabilityPackage P) : Prop :=
  L.lyapunovFunctionDefined ∧ L.derivativeNegativeDefinite ∧ L.regionOfAttraction

theorem lyapunov_stability_closed_from_evidence
    {P : OrdinaryLemmaPerturbationPackage} (L : LyapunovStabilityPackage P)
    (E : LyapunovStabilityEvidence L) : LyapunovStabilityClosed L := by
  exact And.intro E.lyapunovFunctionDefinedClosed
    (And.intro E.derivativeNegativeDefiniteClosed E.regionOfAttractionClosed)

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse