import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure LyapunovFunctionPackage {G : GlobalAttractorPackage} where
  lyapunovFunction : G.stateSpace → ℝ
  continuous : Prop
  positiveDefinite : Prop
  derivativeNonPositive : Prop
  properness : Prop

structure LyapunovFunctionEvidence {G : GlobalAttractorPackage} (L : LyapunovFunctionPackage G) where
  continuousClosed : L.continuous
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNonPositiveClosed : L.derivativeNonPositive
  propernessClosed : L.properness

def LyapunovFunctionClosed {G : GlobalAttractorPackage} (L : LyapunovFunctionPackage G) : Prop :=
  L.continuous ∧ L.positiveDefinite ∧ L.derivativeNonPositive ∧ L.properness

theorem lyapunov_function_closed_from_evidence
    {G : GlobalAttractorPackage} (L : LyapunovFunctionPackage G)
    (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.continuousClosed
    (And.intro E.positiveDefiniteClosed
      (And.intro E.derivativeNonPositiveClosed E.propernessClosed))

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse