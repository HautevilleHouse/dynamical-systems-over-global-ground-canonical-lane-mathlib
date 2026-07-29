import canonicallane.mathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalFlowPDEPackage (M : GlobalGroundManifold) where
  timeDomain : Type u
  vectorField : Type v
  flowMap : timeDomain → M.carrier → M.carrier
  flowEquation : Prop
  localLipschitz : Prop
  globalExistence : Prop
  flowEquationClosed : flowEquation
  localLipschitzClosed : localLipschitz
  globalExistenceClosed : globalExistence

structure GlobalFlowPDEEvidence {M : GlobalGroundManifold}
    (F : GlobalFlowPDEPackage M) where
  flowEquationClosed : F.flowEquation
  localLipschitzClosed : F.localLipschitz
  globalExistenceClosed : F.globalExistence

def GlobalFlowPDEClosed {M : GlobalGroundManifold} (F : GlobalFlowPDEPackage M) : Prop :=
  F.flowEquation ∧ F.localLipschitz ∧ F.globalExistence

theorem global_flow_pde_closed_from_evidence {M : GlobalGroundManifold}
    (F : GlobalFlowPDEPackage M) (E : GlobalFlowPDEEvidence F) : GlobalFlowPDEClosed F := by
  exact And.intro E.flowEquationClosed (And.intro E.localLipschitzClosed E.globalExistenceClosed)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse