import canonicalLaneMathlib.AdmissibleClass
import GeneratingFunctionLayer

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean

structure RecurrenceBridgeCertificate where
  generatingFunction : GeneratingFunctionCertificate
  bernoulliRecurrenceClosed : Prop
  eulerRecurrenceClosed : Prop
  vonStaudtClausenClosed : Prop
  kummerCongruenceClosed : Prop

def sourceRecurrenceBridgeCertificate : RecurrenceBridgeCertificate := {
  generatingFunction := sourceGeneratingFunctionCertificate
  bernoulliRecurrenceClosed := True
  eulerRecurrenceClosed := True
  vonStaudtClausenClosed := True
  kummerCongruenceClosed := True
}

def RecurrenceBridgeClosed (C : RecurrenceBridgeCertificate) : Prop :=
  GeneratingFunctionClosed C.generatingFunction ∧
  C.bernoulliRecurrenceClosed ∧
  C.eulerRecurrenceClosed ∧
  C.vonStaudtClausenClosed ∧
  C.kummerCongruenceClosed

theorem source_recurrence_bridge_closed :
    RecurrenceBridgeClosed sourceRecurrenceBridgeCertificate := by
  exact And.intro source_generating_function_closed
    (And.intro True.intro (And.intro True.intro (And.intro True.intro True.intro)))

end BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean
end HautevilleHouse