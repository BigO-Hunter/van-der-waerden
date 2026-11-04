import Submission.VdwTarget

/-! Submission root — the challenge target.

The verifier checks exactly `Race.bound` (targets.md). This is the improved instance
`c = 1/20000`, strictly above the `1/100000` baseline (a tie starts no run), so the
row is not a tie. The proof is an assembly of the cataloged openai/math
`ProgressionColoring` solution with the construction constant re-tuned to `1/20000`. -/

theorem Race.bound : BigOSpeedrun.VanDerWaerden.Bound ((1 : ℚ) / 20000) :=
  BigOSpeedrun.VanDerWaerden.bound_improved
