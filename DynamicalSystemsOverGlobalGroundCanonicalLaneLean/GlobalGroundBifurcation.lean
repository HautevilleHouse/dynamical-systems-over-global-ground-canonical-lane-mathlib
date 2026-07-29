import canonicallane.mathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalGroundBifurcationPackage {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F}
    {S : GlobalGroundStabilityPackage R} where
  bifurcationParameter : Type u
  bifurcationPoint : Prop
  normalForm : Prop
  structuralStability : Prop
  bifurcationPointClosed : bifurcationPoint
  normalFormClosed : normalForm
  structuralStabilityClosed : structuralStability

structure GlobalGroundBifurcationEvidence {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F}
    {S : GlobalGroundStabilityPackage R} (B : GlobalGroundBifurcationPackage S) where
  bifurcationPointClosed : B.bifurcationPoint
  normalFormClosed : B.normalForm
  structuralStabilityClosed : B.structuralStability

def GlobalGroundBifurcationClosed {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F}
    {S : GlobalGroundStabilityPackage R} (B : GlobalGroundBifurcationPackage S) : Prop :=
  B.bifurcationPoint ∧ B.normalForm ∧ B.structuralStability

theorem global_ground_bifurcation_closed_from_evidence {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F}
    {S : GlobalGroundStabilityPackage R} (B : GlobalGroundBifurcationPackage S)
    (E : GlobalGroundBifurcationEvidence B) : GlobalGroundBifurcationClosed B := by
  exact And.intro E.bifurcationPointClosed
    (And.intro E.normalFormClosed E.structuralStabilityClosed)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse