import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean.BernoulliEulerDefs

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean

structure BernoulliEulerGeneratingData where
  generatingFunction : ℚ → ℚ
  recurrenceRelation : ℕ → ℚ
  convergenceRadius : ℚ
  generatingFunctionClosed : generatingFunction 0 = 1
  recurrenceRelationClosed : recurrenceRelation 0 = 1
  convergenceRadiusClosed : convergenceRadius = 2 * π

def bernoulliGeneratingFunction (t : ℚ) : ℚ :=
  t / (exp t - 1) -- symbolic placeholder

def eulerGeneratingFunction (t : ℚ) : ℚ :=
  2 / (exp t + exp (-t)) -- symbolic placeholder

def bernoulliRecurrence (n : ℕ) : ℚ :=
  ∑_{k=0}^{n} (binomial (n+1) k) * bernoulliNumber k -- abstract

theorem generating_function_constant : bernoulliGeneratingFunction 0 = 1 := by
  unfold bernoulliGeneratingFunction
  simp

end BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean
end HautevilleHouse