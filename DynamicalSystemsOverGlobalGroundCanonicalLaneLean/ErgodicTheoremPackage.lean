import DynamicalSystemsOverGlobalGroundCanonicalLaneLean.GlobalGroundAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure ErgodicTheoremPackage (A : AdmissibleClass) where
  timeAverageExists : Prop
  spaceAverageEquals : Prop
  ergodicDecompositionRefined : Prop
  mixingCondition : Prop

structure ErgodicTheoremEvidence (A : AdmissibleClass) (E : ErgodicTheoremPackage A) where
  timeAverageExistsClosed : E.timeAverageExists
  spaceAverageEqualsClosed : E.spaceAverageEquals
  ergodicDecompositionRefinedClosed : E.ergodicDecompositionRefined
  mixingConditionClosed : E.mixingCondition

def ErgodicTheoremClosed (A : AdmissibleClass) (E : ErgodicTheoremPackage A) : Prop :=
  E.timeAverageExists ∧ E.spaceAverageEquals ∧ E.ergodicDecompositionRefined ∧ E.mixingCondition

theorem ergodic_theorem_closed_from_evidence (A : AdmissibleClass) (E : ErgodicTheoremPackage A) (Ev : ErgodicTheoremEvidence A E) : ErgodicTheoremClosed A E :=
  And.intro Ev.timeAverageExistsClosed (And.intro Ev.spaceAverageEqualsClosed (And.intro Ev.ergodicDecompositionRefinedClosed Ev.mixingConditionClosed))

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse