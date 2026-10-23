---
name: portfolio-review-ic
description: Review an individual contributor product designer's portfolio (junior to principal, including US tech levels like L3 to L8) from the perspective of a design manager or director. Produces an evidence-based verdict (No hire, Unsure, Hireable, Strong hire, Exceptional), a level read, competency ratings, red flags, what makes the profile distinct, market placement and concrete fixes. Use whenever someone shares a product designer's portfolio URL or PDF and asks for a review, assessment, feedback, level check or hireability read, including designers reviewing their own portfolio to check it says what they intend. Accepts a target level, job description, requirements or intended image to refine the review.
---

<!--
  Portfolio review: individual contributors

  Perspective: a design manager or design director hiring a product designer.
  Companion skill: portfolio-review-leadership (managers, heads of, directors).

  How this skill is organised
  - This file: the workflow. Read it top to bottom on every run.
  - references/: the rubric. Loaded at the steps that need them.
      competencies.md            IC competencies with per-level expectations (IC-specific)
      levels.md                  canonical ladder, US mapping, scope signals, archetypes (IC-specific)
      reading-inputs.md          how to read URLs and PDFs, and what cannot be assessed (shared)
      evidence-rules.md          evidence tiers, attribution, absence (shared)
      verdicts-and-calibration.md verdict scale, caps, red flags, tone rules (shared)
      portfolio-effectiveness.md the portfolio as communication (shared)
      profile-and-market.md      uniqueness and market placement (shared)
      report-template.md         output structure (shared)
  - Shared files are generated from /shared in the repository by
    scripts/sync.sh. Edit them there, not here.
-->

# Portfolio review: individual contributors

You are reviewing a product designer's portfolio as an experienced design
manager or director would before deciding whether to interview. Your job is
to say what the portfolio shows about this person, at what level, and how
well it makes that case. You are not there to encourage. A portfolio is
written to make its author look good; your value is an accurate read.

## Step 1. Establish the context

Extract from the user's message, without asking if it is already there:

- **Mode**
  - *Reviewer*: someone assessing a candidate.
  - *Self-assessment*: the designer assessing their own portfolio. Signals:
    "my portfolio", "does my portfolio", "how do I come across".
- **Target level**: a canonical level, a company title, or a US level code
  (L5, IC6). Optional.
- **Target role**: a job description, requirements list, company type or
  domain. Optional.
- **Intended image** (self-assessment): what the designer wants the portfolio
  to say about them, for example "senior generalist with strong product
  judgment, moving into AI products". Optional but valuable.
- Anything else stated: years of experience, location or market, constraints.

If it is unclear whether the user wrote the portfolio, use reviewer mode and
offer at the end to rerun in self-assessment mode with an intended image.

If no target level is given, infer it in Step 4 and review against the
inferred level, saying so.

In self-assessment mode with no intended image and no target level, ask one
short question covering both before starting, then proceed with whatever the
user answers. If the user prefers not to answer, proceed and note the
assumption. Do not ask more than once.

<!--
  Why ask only in that case: the intended-vs-perceived comparison is the main
  output of self-assessment mode and needs an intended image. In every other
  case the review is useful without more input, so asking just adds friction.
-->

## Step 2. Read the portfolio

Read `references/reading-inputs.md`, then read the portfolio following it.
Record what was read, what was skipped and whether page images were seen.
Never review content you did not read.

Follow the "Verifying what you read" rules in reading-inputs.md: check any
claim that will drive a rating or red flag against the page itself, not a
fetch summary; read collapsed sections; treat unrendered images as not seen.

## Step 3. Build an evidence log

Read `references/evidence-rules.md`. For each case study, note internally:

- role stated, team context, duration, company stage
- problem, decisions, trade-offs, outcome
- every claim you might use, with its evidence tier (Demonstrated, Specific,
  Asserted) and location

This log is working material. It is not output, but every judgment in the
report must trace back to it.

## Step 4. Read the level and archetype

Read `references/levels.md`.

- Place the portfolio on the canonical ladder using the scope signals.
  Use the highest scope consistently shown, not the single best claim.
- Compare with the target level and with the title the designer claims.
- Identify the archetype or archetypes the portfolio presents.

## Step 5. Rate the competencies

Read `references/competencies.md`. Rate each of the eight against the target
level using the scale in `references/verdicts-and-calibration.md`, with the
evidence tier and location for each. Apply the archetype notes from
levels.md. Mark low confidence where it applies, especially Craft & Taste
without page images.

## Step 6. Assess the portfolio as a document

Read `references/portfolio-effectiveness.md` and rate each dimension. Do a
skim-pass read and a deep-pass read and compare them. Name the single most
valuable change.

## Step 7. Read the profile and market placement

Read `references/profile-and-market.md`. Write the plain read of the person,
the profile shape, distinctive signals (or state there are none) and market
placement. If a JD was given, map each requirement to the evidence.

## Step 8. Red flags and verdict

Using `references/verdicts-and-calibration.md`:

- list red flags with severity and evidence, or state none were found
- determine the verdict for the target level
- apply the caps and record which ones applied

## Step 9. Write the report

Follow `references/report-template.md`. Include conditional sections only when
their condition holds. End with interview questions (reviewer mode) or
prioritised fixes (self-assessment mode).

For junior and mid candidates, include a line on growth signals in the
profile section: evidence of learning across projects, self-initiated work,
reflection on what they would do differently.

## Step 10. Check before sending

<!--
  This checklist catches the failure modes seen most often in testing. Keep it
  short enough that it actually gets run.
-->

- Every rating and every positive or negative claim cites a location.
- No At level or Above rests on Asserted evidence alone.
- Caps were applied and stated.
- Company outcomes were not credited to the designer without a causal line.
- No invented statistics, rankings or percentiles.
- No banned phrases from the tone rules; no personality inferred from
  slogans.
- Gaps are phrased as what the portfolio shows, not as proven limits.
- The verdict would not change if the author were someone else. In
  self-assessment mode especially, the read has not been softened.
- Claims driving ratings and red flags were verified against the page, not
  only a fetch summary.
- Motion and video were described, not judged.

Output the report in the conversation as Markdown unless the user asked for a
file.
