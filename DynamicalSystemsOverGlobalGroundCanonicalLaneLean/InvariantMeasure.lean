import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure InvariantMeasurePackage {G : GlobalAttractorPackage} where
  measure : MeasureTheory.Measure G.stateSpace
  invariantUnderDynamics : Prop
  ergodicity : Prop
  mixing : Prop

structure InvariantMeasureEvidence {G : GlobalAttractorPackage} (M : InvariantMeasurePackage G) where
  invariantUnderDynamicsClosed : M.invariantUnderDynamics
  ergodicityClosed : M.ergodicity
  mixingClosed : M.mixing

def InvariantMeasureClosed {G : GlobalAttractorPackage} (M : InvariantMeasurePackage G) : Prop :=
  M.invariantUnderDynamics ∧ M.ergodicity ∧ M.mixing

theorem invariant_measure_closed_from_evidence
    {G : GlobalAttractorPackage} (M : InvariantMeasurePackage G)
    (E : InvariantMeasureEvidence M) : InvariantMeasureClosed M := by
  exact And.intro E.invariantUnderDynamicsClosed
    (And.intro E.ergodicityClosed E.mixingClosed)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse