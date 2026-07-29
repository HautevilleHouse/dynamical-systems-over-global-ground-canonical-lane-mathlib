import DynamicalSystemsOverGlobalGroundCanonicalLaneLean.InvariantMeasures

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure ErgodicDecompositionPackage {G : GlobalGround}
    (I : InvariantMeasuresPackage G) where
  ergodicSet : Set (G.carrier → G.carrier)
  uniqueDecomposition : Prop
  measureTheoreticIsomorphism : Prop

structure ErgodicDecompositionEvidence {G : GlobalGround}
    {I : InvariantMeasuresPackage G} (E : ErgodicDecompositionPackage I) where
  uniqueDecompositionClosed : E.uniqueDecomposition
  measureTheoreticIsomorphismClosed : E.measureTheoreticIsomorphism

def ErgodicDecompositionClosed {G : GlobalGround}
    {I : InvariantMeasuresPackage G} (E : ErgodicDecompositionPackage I) : Prop :=
  E.uniqueDecomposition ∧ E.measureTheoreticIsomorphism

theorem ergodic_decomposition_closed_from_evidence
    {G : GlobalGround} {I : InvariantMeasuresPackage G}
    (E : ErgodicDecompositionPackage I) (Ev : ErgodicDecompositionEvidence E) :
    ErgodicDecompositionClosed E := by
  exact And.intro Ev.uniqueDecompositionClosed Ev.measureTheoreticIsomorphismClosed

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse