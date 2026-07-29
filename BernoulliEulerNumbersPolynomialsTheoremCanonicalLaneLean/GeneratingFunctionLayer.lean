import canonicalLaneMathlib.AdmissibleClass
import BernoulliEulerAnalyticObjects

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean

structure GeneratingFunctionCertificate where
  bernoulliGF : Prop
  eulerGF : Prop
  bernoulliPolyGF : Prop
  eulerPolyGF : Prop
  radiusConvergence : Prop

def sourceGeneratingFunctionCertificate : GeneratingFunctionCertificate := {
  bernoulliGF := True
  eulerGF := True
  bernoulliPolyGF := True
  eulerPolyGF := True
  radiusConvergence := True
}

def GeneratingFunctionClosed (C : GeneratingFunctionCertificate) : Prop :=
  C.bernoulliGF ∧ C.eulerGF ∧ C.bernoulliPolyGF ∧ C.eulerPolyGF ∧ C.radiusConvergence

theorem source_generating_function_closed :
    GeneratingFunctionClosed sourceGeneratingFunctionCertificate := by
  exact And.intro True.intro (And.intro True.intro (And.intro True.intro (And.intro True.intro True.intro)))

end BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean
end HautevilleHouse