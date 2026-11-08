# van-der-waerden

Lean 4 submission for the quantitative van der Waerden board: improved instance `c = 1/20000`, strictly above the `1/100000` baseline (not a tie).
Construction: assembly of the cataloged [openai/math](https://github.com/openai/math) `ProgressionColoring` solution with the construction constant re-tuned to `1/20000`; formalization ours. AI-assisted (darkhipo swarm), disclosed.
Board: BigO Speedrun, van der Waerden (`challenges/van-der-waerden`).
Status: verified at `c = 1/20000`; margin note — `c > 1/9` unreachable (ceiling `1/16000`).
