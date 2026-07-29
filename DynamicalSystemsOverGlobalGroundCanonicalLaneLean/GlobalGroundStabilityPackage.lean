import canonicallane.mathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalGroundStabilityPackage {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F} where
  lyapunovFunction : Type u
  lyapunovStability : Prop
  asymptoticallyStable : Prop
  basinOfAttraction : Prop
  lyapunovStabilityClosed : lyapunovStability
  asymptoticallyStableClosed : asymptoticallyStable
  basinOfAttractionClosed : basinOfAttraction

structure GlobalGroundStabilityEvidence {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F}
    (S : GlobalGroundStabilityPackage R) where
  lyapunovStabilityClosed : S.lyapunovStability
  asymptoticallyStableClosed : S.asymptoticallyStable
  basinOfAttractionClosed : S.basinOfAttraction

def GlobalGroundStabilityClosed {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F}
    (S : GlobalGroundStabilityPackage R) : Prop :=
  S.lyapunovStability ∧ S.asymptoticallyStable ∧ S.basinOfAttraction

theorem global_ground_stability_closed_from_evidence {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} {R : GlobalGroundRecurrencePackage F}
    (S : GlobalGroundStabilityPackage R) (E : GlobalGroundStabilityEvidence S) :
    GlobalGroundStabilityClosed S := by
  exact And.intro E.lyapunovStabilityClosed
    (And.intro E.asymptoticallyStableClosed E.basinOfAttractionClosed)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse