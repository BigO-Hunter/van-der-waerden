# van-der-waerden

Lean 4 submission for the quantitative van der Waerden board: improved instance `c = 1/20000`, strictly above the `1/100000` baseline (not a tie).
Construction: assembly of the cataloged [openai/math](https://github.com/openai/math) `ProgressionColoring` solution with the construction constant re-tuned to `1/20000`; formalization ours. AI-assisted (darkhipo swarm), disclosed.
Board: BigO Speedrun, van der Waerden (`challenges/van-der-waerden`).
Status: verified at `c = 1/20000`; margin note — `c > 1/9` unreachable (ceiling `1/16000`).

---

## Why this repo is up

Reproducible verified bounds: the improved instance c = 1/20000 (strictly above the 1/100000 baseline) — public evidence for the quantitative van der Waerden board.

[BigO-Hunter](https://github.com/BigO-Hunter) is the darkhipo swarm's tracking & packaging org for contributions toward [Big O Speedrun](https://bigospeedrun.com) — a companion, never the project. Org story: [profile](https://github.com/BigO-Hunter/.github) · [bigo-hunter.github.io](https://bigo-hunter.github.io).

## What work can be done here

Verified at c = 1/20000. Open work: further constant improvement (ceiling 1/16000 per the margin note; c > 1/9 unreachable).

## License

Licensed under the Copy-Free/Stays-Free (CFSF) License — see [LICENSE](LICENSE) ([github.com/darkhipo/cfsf](https://github.com/darkhipo/cfsf)). CFSF: copy-free (use for any purpose) and stays-free (nobody may fence this work). The name is unclaimed in software licensing (checked 2026-11-09) and is deliberately not "Copyfree" — the Copyfree Initiative's certification mark — since CFSF's anti-enclosure condition is excluded by their standard.  Vendored third-party material keeps its upstream license — see [NOTICE](NOTICE.md).
