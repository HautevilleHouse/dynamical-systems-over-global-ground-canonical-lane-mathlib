import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure TopologicalTransitivityPackage where
  space : Type u
  denseOrbit : Prop
  transitivityProperty : Prop
  minimalSet : Prop
  connectivityOnGlobalGround : Prop

structure TopologicalTransitivityEvidence (T : TopologicalTransitivityPackage) where
  denseOrbitClosed : T.denseOrbit
  transitivityPropertyClosed : T.transitivityProperty
  minimalSetClosed : T.minimalSet
  connectivityOnGlobalGroundClosed : T.connectivityOnGlobalGround

def TopologicalTransitivityClosed (T : TopologicalTransitivityPackage) : Prop :=
  T.denseOrbit ∧ T.transitivityProperty ∧ T.minimalSet ∧ T.connectivityOnGlobalGround

theorem topological_transitivity_closed_from_evidence (T : TopologicalTransitivityPackage) (E : TopologicalTransitivityEvidence T) : TopologicalTransitivityClosed T := by
  exact And.intro E.denseOrbitClosed (And.intro E.transitivityPropertyClosed (And.intro E.minimalSetClosed E.connectivityOnGlobalGroundClosed))

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse