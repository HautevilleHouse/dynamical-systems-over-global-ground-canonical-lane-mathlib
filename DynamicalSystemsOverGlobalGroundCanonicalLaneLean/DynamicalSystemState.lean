import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

structure DynamicalSystemState where
  PhaseSpace : Type u
  TimeIndex : Type v
  dynamics : TimeIndex → PhaseSpace → PhaseSpace
  initialCondition : PhaseSpace
  invariantMeasure : Set PhaseSpace → Prop
  ergodicComponent : Prop

structure GlobalGroundSystem (S : DynamicalSystemState) where
  lyapunovExponent : ℝ
  entropyProduction : ℝ
  attractorDimension : ℕ
  symbolicCoding : Prop

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse