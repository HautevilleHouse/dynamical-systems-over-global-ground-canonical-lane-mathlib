import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalGroundManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  metric : Type v
  boundedGeometry : Prop

structure GlobalGroundEvidence (M : GlobalGroundManifold) where
  smoothStructureClosed : M.smoothStructure
  boundedGeometryClosed : M.boundedGeometry

def GlobalGroundManifoldClosed (M : GlobalGroundManifold) : Prop :=
  M.smoothStructure ∧ M.boundedGeometry

theorem global_ground_manifold_closed_from_evidence (M : GlobalGroundManifold)
    (E : GlobalGroundEvidence M) : GlobalGroundManifoldClosed M := by
  exact And.intro E.smoothStructureClosed E.boundedGeometryClosed

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse