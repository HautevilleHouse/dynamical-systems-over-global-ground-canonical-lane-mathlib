import DynamicalSystemsOverGlobalGroundCanonicalLaneLean.DynamicalSystemState

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalGroundAdmissibleObject where
  system : DynamicalSystemState
  globalGroundCondition : Prop
  ergodicDecomposition : Prop
  conclusion : globalGroundCondition ∧ ergodicDecomposition

structure AdmissibleClass where
  object : GlobalGroundAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse