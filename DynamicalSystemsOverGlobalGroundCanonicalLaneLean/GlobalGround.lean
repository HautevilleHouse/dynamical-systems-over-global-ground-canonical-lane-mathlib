import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure GlobalGround where
  carrier : Type u
  topology : TopologicalSpace carrier
  measure : Set carrier → ℝ
  dynamics : carrier → carrier → carrier
  invariantMeasure : Prop
  ergodic : Prop

structure GroundAdmittedObject where
  ground : GlobalGround
  compactMetricSpace : Prop
  continuousDynamics : Prop
  invariantMeasureExists : Prop
  ergodicProperty : Prop
  conclusion : invariantMeasureExists ∧ ergodicProperty

def GroundWitnessClosed (O : GroundAdmittedObject) : Prop :=
  O.conclusion

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse