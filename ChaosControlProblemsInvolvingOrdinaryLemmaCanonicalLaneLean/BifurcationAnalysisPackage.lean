import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure BifurcationAnalysisPackage where
  parameterFamily : Type u
  equilibriumSet : Type v
  bifurcationPoints : Prop
  stabilityDiagram : Prop

structure BifurcationAnalysisEvidence (B : BifurcationAnalysisPackage) where
  bifurcationPointsClosed : B.bifurcationPoints
  stabilityDiagramClosed : B.stabilityDiagram

def BifurcationAnalysisClosed (B : BifurcationAnalysisPackage) : Prop :=
  B.bifurcationPoints ∧ B.stabilityDiagram

theorem bifurcation_analysis_closed_from_evidence (B : BifurcationAnalysisPackage) (E : BifurcationAnalysisEvidence B) :
    BifurcationAnalysisClosed B := by
  exact And.intro E.bifurcationPointsClosed E.stabilityDiagramClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse