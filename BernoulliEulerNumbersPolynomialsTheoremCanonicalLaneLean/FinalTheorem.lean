import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean

def ConstrainedBernoulliEulerClosure (A : AdmissibleClass) : Prop :=
  bernoulliEulerBridgeClosed A ∧ bernoulliEulerGateClosed A

theorem constrained_bernoulli_euler_endgame (A : AdmissibleClass) :
    ConstrainedBernoulliEulerClosure A := by
  exact And.intro (bernoulli_euler_bridge_from_admissible_class A) (bernoulli_euler_gate_from_admissible_class A)

end BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean
end HautevilleHouse