import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverGlobalGroundCanonicalLaneLean.GlobalGroundManifold

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalFlow (M : GlobalGroundManifold) where
  timeDomain : Type v
  timeTopology : TopologicalSpace timeDomain
  flowMap : timeDomain → M.carrier → M.carrier
  groupAction : Prop
  continuity : Prop

structure GlobalFlowEvidence {M : GlobalGroundManifold} (F : GlobalFlow M) where
  groupActionClosed : F.groupAction
  continuityClosed : F.continuity

def GlobalFlowClosed {M : GlobalGroundManifold} (F : GlobalFlow M) : Prop :=
  F.groupAction ∧ F.continuity

theorem global_flow_closed_from_evidence {M : GlobalGroundManifold} (F : GlobalFlow M)
    (E : GlobalFlowEvidence F) : GlobalFlowClosed F := by
  exact And.intro E.groupActionClosed E.continuityClosed

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse