import DynamicalSystemsOverGlobalGroundCanonicalLaneLean.GlobalGroundAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DynamicalSystemsOverGlobalGroundCanonicalLaneLean
end HautevilleHouse