import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundCanonicalLaneLean.GlobalFlow

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure InvariantMeasures {M : GlobalGroundManifold} (F : GlobalFlow M) where
  measureSpace : Type v
  measure : measureSpace → ℝ
  invariance : Prop
  ergodicity : Prop

structure InvariantMeasuresEvidence {M : GlobalGroundManifold} {F : GlobalFlow M}
    (I : InvariantMeasures F) where
  invarianceClosed : I.invariance
  ergodicityClosed : I.ergodicity

def InvariantMeasuresClosed {M : GlobalGroundManifold} {F : GlobalFlow M}
    (I : InvariantMeasures F) : Prop :=
  I.invariance ∧ I.ergodicity

theorem invariant_measures_closed_from_evidence {M : GlobalGroundManifold} {F : GlobalFlow M}
    (I : InvariantMeasures F) (E : InvariantMeasuresEvidence I) : InvariantMeasuresClosed I := by
  exact And.intro E.invarianceClosed E.ergodicityClosed

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse