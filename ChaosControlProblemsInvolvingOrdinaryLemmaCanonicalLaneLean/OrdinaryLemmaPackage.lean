import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean

structure OrdinaryLemmaPackage where
  lemmaStatement : Prop
  proofSketch : String
  appliedInControl : Prop

structure OrdinaryLemmaEvidence (L : OrdinaryLemmaPackage) where
  lemmaStatementClosed : L.lemmaStatement
  appliedInControlClosed : L.appliedInControl

def OrdinaryLemmaClosed (L : OrdinaryLemmaPackage) : Prop :=
  L.lemmaStatement ∧ L.appliedInControl

theorem ordinary_lemma_closed_from_evidence (L : OrdinaryLemmaPackage) (E : OrdinaryLemmaEvidence L) :
    OrdinaryLemmaClosed L := by
  exact And.intro E.lemmaStatementClosed E.appliedInControlClosed

end ChaosControlProblemsInvolvingOrdinaryLemmaCanonicalLaneLean
end HautevilleHouse