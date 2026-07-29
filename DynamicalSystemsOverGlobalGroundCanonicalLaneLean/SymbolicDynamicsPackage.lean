import DynamicalSystemsOverGlobalGroundCanonicalLaneLean.ErgodicTheoremPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure SymbolicDynamicsPackage (A : AdmissibleClass) {E : ErgodicTheoremPackage A} where
  shiftSpace : Set (ℕ → ℕ)
  subshiftOfFiniteType : Prop
  topologicalEntropy : ℝ
  markovPartition : Prop

structure SymbolicDynamicsEvidence (A : AdmissibleClass) {E : ErgodicTheoremPackage A} (S : SymbolicDynamicsPackage A E) where
  subshiftOfFiniteTypeClosed : S.subshiftOfFiniteType
  topologicalEntropyClosed : S.topologicalEntropy > 0
  markovPartitionClosed : S.markovPartition

def SymbolicDynamicsClosed (A : AdmissibleClass) {E : ErgodicTheoremPackage A} (S : SymbolicDynamicsPackage A E) : Prop :=
  S.subshiftOfFiniteType ∧ S.topologicalEntropy > 0 ∧ S.markovPartition

theorem symbolic_dynamics_closed_from_evidence (A : AdmissibleClass) {E : ErgodicTheoremPackage A} (S : SymbolicDynamicsPackage A E) (Ev : SymbolicDynamicsEvidence A E S) : SymbolicDynamicsClosed A S :=
  And.intro Ev.subshiftOfFiniteTypeClosed (And.intro Ev.topologicalEntropyClosed Ev.markovPartitionClosed)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse