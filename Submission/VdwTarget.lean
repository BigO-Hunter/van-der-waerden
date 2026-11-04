import Submission.ProgressionColoring.Main

/-! Target adapter (mirror of `challenges/van-der-waerden/Target.lean`) against the
vendored corpus solution. `Bound c` is the corpus statement with the constant
replaced by a free rational `c` (larger `c` better). `W`, `MonoAP`, `IsRamsey` come
from the vendored `Model.lean`, byte-identical to the frozen challenge statement
(`challenges/van-der-waerden/Statement.lean`). The proof is an assembly of the
cataloged, gap-free (no placeholder) openai/math `ProgressionColoring` solution,
with the construction constant re-tuned from `1/100000` to `1/20000` (a parameter
lemma; see the README margin note). -/
namespace BigOSpeedrun.VanDerWaerden

open OAI.QuantitativeVanDerWaerden

/-- Quantitative van der Waerden lower bound at exponent constant `c`. -/
def Bound (c : ℚ) : Prop :=
  ∃ K : ℕ, ∀ k ≥ K, ∀ r ≥ 2,
    (k : ℝ) ^ ((c : ℝ) * k * (Nat.log 2 r : ℝ)) < (W r k : ℝ)

/-- The improved instance `c = 1/20000`, bridged from the assembled solution.
This is strictly above the `1/100000` baseline (a tie would start no run). -/
theorem bound_improved : Bound ((1 : ℚ) / 20000) := by
  have h := OAI.QuantitativeVanDerWaerden.uniform_lower_bound
  simpa [Bound, Rat.cast_div, Rat.cast_ofNat, Rat.cast_one] using h

end BigOSpeedrun.VanDerWaerden
