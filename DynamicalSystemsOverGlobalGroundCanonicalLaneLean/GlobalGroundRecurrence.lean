import canonicallane.mathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalGroundRecurrencePackage {M : GlobalGroundManifold}
    (F : GlobalFlowPDEPackage M) where
  recurrentSet : Set M.carrier
  poincareRecurrence : Prop
  minimalSetExists : Prop
  ergodicDecomposition : Prop
  poincareRecurrenceClosed : poincareRecurrence
  minimalSetExistsClosed : minimalSetExists
  ergodicDecompositionClosed : ergodicDecomposition

structure GlobalGroundRecurrenceEvidence {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} (R : GlobalGroundRecurrencePackage F) where
  poincareRecurrenceClosed : R.poincareRecurrence
  minimalSetExistsClosed : R.minimalSetExists
  ergodicDecompositionClosed : R.ergodicDecomposition

def GlobalGroundRecurrenceClosed {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} (R : GlobalGroundRecurrencePackage F) : Prop :=
  R.poincareRecurrence ∧ R.minimalSetExists ∧ R.ergodicDecomposition

theorem global_ground_recurrence_closed_from_evidence {M : GlobalGroundManifold}
    {F : GlobalFlowPDEPackage M} (R : GlobalGroundRecurrencePackage F)
    (E : GlobalGroundRecurrenceEvidence R) : GlobalGroundRecurrenceClosed R := by
  exact And.intro E.poincareRecurrenceClosed
    (And.intro E.minimalSetExistsClosed E.ergodicDecompositionClosed)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse