import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalAttractorPackage where
  stateSpace : Type u
  dynamics : Type v
  attractorSet : Set stateSpace
  forwardInvariant : Prop
  attractingBasin : Set stateSpace
  basinOfAttraction : Prop
  globalStability : Prop

structure GlobalAttractorEvidence (G : GlobalAttractorPackage) where
  forwardInvariantClosed : G.forwardInvariant
  basinOfAttractionClosed : G.basinOfAttraction
  globalStabilityClosed : G.globalStability

def GlobalAttractorClosed (G : GlobalAttractorPackage) : Prop :=
  G.forwardInvariant ∧ G.basinOfAttraction ∧ G.globalStability

theorem global_attractor_closed_from_evidence (G : GlobalAttractorPackage) (E : GlobalAttractorEvidence G) :
    GlobalAttractorClosed G := by
  exact And.intro E.forwardInvariantClosed
    (And.intro E.basinOfAttractionClosed E.globalStabilityClosed)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse