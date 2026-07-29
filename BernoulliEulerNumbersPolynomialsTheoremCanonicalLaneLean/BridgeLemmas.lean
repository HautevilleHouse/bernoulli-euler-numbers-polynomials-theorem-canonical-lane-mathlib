import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean.BernoulliEulerNumbersPolynomials

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean

-- Bridge closure: the objects are admissible
def bernoulliEulerBridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bernoulli_euler_bridge_from_admissible_class (A : AdmissibleClass) :
    bernoulliEulerBridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean
end HautevilleHouse