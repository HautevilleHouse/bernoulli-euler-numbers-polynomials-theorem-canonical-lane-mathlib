import BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean.BernoulliEulerPrimitives
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def sourceRepository : String :=
  "bernoulli-euler-numbers-polynomials-theorem-canonical-lane"

def sourceDescription : String :=
  "Bernoulli Euler Numbers Polynomials Theorem"

def sourceRepositoryKey : String :=
  sourceRepository

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  localWitness : String
  bridgeEvidence : String
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

structure ClosureState where
  object : AdmittedTheoremObject

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := "carried"
}

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧ O.object.theoremObject = sourceDescription

end BernoulliEulerNumbersPolynomialsTheoremCanonicalLaneLean
end HautevilleHouse