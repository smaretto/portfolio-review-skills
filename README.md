# Design portfolio review skills for Claude

Two open-source Claude skills that review product design portfolios the way
an experienced hiring manager would: what the portfolio shows about the
person, at what level, how well it makes the case, and what to change.

| Skill | Reviews | Perspective |
| --- | --- | --- |
| `portfolio-review-ic` | Product designers, Junior to Principal (including US levels such as L3 to L8) | Design manager or director |
| `portfolio-review-leadership` | Design Manager, Senior Manager, Head of Design, Director, Senior Director | CPO, VP of Design or executive hiring manager |

Both work in two modes:

- **Reviewer**: assess a candidate before an interview.
- **Self-assessment**: check that your own portfolio says what you intend it
  to say. Give it the image you want to project and it reports where the
  portfolio supports, misses or contradicts it.

## What makes these different

- **Evidence over claims.** Every claim is classified as Demonstrated,
  Specific, Asserted or Absent. High ratings need real evidence; confident
  wording alone does not count.
- **Not celebratory.** A portfolio is written to make its author look good.
  The skills apply explicit caps and tone rules so the output does not drift
  into praise. If a portfolio is not good enough, the report says so.
- **Calibrated to level.** A junior is not judged like a principal. Each
  competency has per-level expectations, and the verdict is for the target
  level.
- **Scope over titles.** Especially for leaders: a "Head of Design" with three
  reports reads as a Manager. The report states title and effective level
  side by side.
- **Designer and portfolio kept apart.** Competency ratings describe what the
  work shows; a separate section assesses the portfolio as communication
  (positioning, case selection, storytelling, visual evidence, readability).
- **Uniqueness and market placement.** Beyond the verdict, the report names
  what is genuinely distinctive about the profile, where it fits and where it
  would struggle, without invented rankings.
- **Honest about limits.** The skills say what they could not read and cannot
  judge (for example, they can detect motion and video but cannot watch it).

## Output

Each review follows the same structure so reviews are comparable, including
before and after you change your portfolio:

1. Inputs (what was read, what was not)
2. Verdict: No hire, Unsure, Hireable, Strong hire or Exceptional, with any caps applied
3. What this portfolio says about the person
4. Level and scope read
5. Competency evidence table
6. Profile shape and archetype
7. Distinctive signals
8. Market placement
9. Portfolio effectiveness, plus the single most valuable change
10. Red flags, with severity
11. Fit against the role (if a JD was given)
12. Intended vs perceived (self-assessment)
13. Interview questions (reviewer) or prioritised fixes (self-assessment)

## Install

Each skill is a self-contained folder under `skills/`.

- **Claude Code**: copy the folder into `~/.claude/skills/` (all projects) or
  `.claude/skills/` in a project.
- **Claude apps**: zip the skill folder (the folder itself, containing
  `SKILL.md`) and upload it as a custom skill in your settings. Install the
  two skills separately.

## Use

Give a URL or a PDF, and any context you have. Examples:

```
Review this portfolio for a Senior Product Designer role: https://example.com
```

```
Review my portfolio as if I were applying for an L6 role at a US tech company.
I want it to say: senior generalist, strong product judgment, builds in code,
moving into AI products. [attach PDF]
```

```
Here is a design director's portfolio and the job description for our
Head of Design role. Is this person at the level we need? [URL + JD]
```

Useful context to add: target level, job description or requirements, company
stage, and in self-assessment mode the image you want the portfolio to send.

### Inputs

- **PDF**: most reliable. Export your portfolio or deck to PDF when possible.
- **Website URL**: works for most personal sites (Framer, Webflow, Next.js,
  Squarespace). Case studies linked from the home page are followed.
- **Usually not readable**: pitch.com, Google Slides, Figma, heavy Notion
  pages, password-protected pages, scroll-driven or WebGL sites. Export to
  PDF instead.
- Visual assessment needs page images (PDF pages, or a browser tool that
  renders pages). With text only, craft ratings are marked low confidence
  and verdicts for craft-led roles are provisional.

## Repository structure

```
shared/                        Source of truth for rubric files used by both skills
  reading-inputs.md            How to read URLs and PDFs; what cannot be assessed
  evidence-rules.md            Evidence tiers, attribution, absence, inference limits
  verdicts-and-calibration.md  Ratings, verdict scale, caps, red flags, tone rules
  portfolio-effectiveness.md   The portfolio as a piece of communication
  profile-and-market.md        Uniqueness, profile shape, market placement
  report-template.md           Output structure
skills/
  portfolio-review-ic/
    SKILL.md                   Workflow
    references/
      competencies.md          8 IC competencies with per-level expectations
      levels.md                Canonical ladder, US mapping, scope signals, archetypes
      (shared files, generated)
  portfolio-review-leadership/
    SKILL.md                   Workflow
    references/
      competencies.md          8 leadership competencies with per-level expectations
      levels.md                Effective levels, scope signals, title inflation, archetypes
      (shared files, generated)
scripts/
  sync.sh                      Copies shared/ into each skill; --check for CI
```

## Improving the skills

See [CONTRIBUTING.md](CONTRIBUTING.md). In short: edit shared files in
`shared/` and run `scripts/sync.sh`; edit skill-specific files in place.
Every file has comments explaining why its rules exist, so you can change
them knowingly.

## Origin

The IC competencies are adapted from an AI-native product design competency
framework that weights selection, evidence and ownership over artifact
volume, because AI made production cheap but not judgment. The leadership
competencies follow the same structure for middle management.

## Limitations

- The review judges the portfolio as evidence, not the person. Gaps are gaps
  in what the portfolio shows; the report turns the important ones into
  interview questions.
- Market context is a dated snapshot (late 2026) and stated qualitatively.
- Taste is the area where an AI reviewer is least reliable. The skills
  assess what is checkable and say when confidence is low.
- Use the output as one input to a hiring decision, never the decision.

## License

MIT. See [LICENSE](LICENSE).
