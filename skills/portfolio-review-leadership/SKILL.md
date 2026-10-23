---
name: portfolio-review-leadership
description: Review a design leader's portfolio (Design Manager, Senior Manager, Head of Design, Director, Senior Director) from the perspective of a CPO, VP of Design or executive hiring manager. Reads the effective level from scope rather than title, then produces an evidence-based verdict (No hire, Unsure, Hireable, Strong hire, Exceptional), competency ratings, red flags, leadership archetype, what makes the profile distinct, market placement and concrete fixes. Use whenever someone shares a design manager's, head of design's or design director's portfolio URL or PDF and asks for a review, assessment, level check or hireability read, including leaders reviewing their own portfolio to check it says what they intend. Accepts a target level, job description, requirements or intended image to refine the review.
---

<!--
  Portfolio review: design leadership (middle management)

  Perspective: a CPO, VP of Design or executive hiring a design leader.
  Companion skill: portfolio-review-ic (individual contributors).
  Out of scope: VP and C-level candidates.

  How this skill is organised
  - This file: the workflow. Same steps as the IC skill so the two stay easy
    to compare and maintain. Differences are marked "Leadership-specific".
  - references/:
      competencies.md            leadership competencies with per-level expectations (leadership-specific)
      levels.md                  effective levels, scope signals, title inflation, archetypes (leadership-specific)
      reading-inputs.md          how to read URLs and PDFs, and what cannot be assessed (shared)
      evidence-rules.md          evidence tiers, attribution, absence (shared)
      verdicts-and-calibration.md verdict scale, caps, red flags, tone rules (shared)
      portfolio-effectiveness.md the portfolio as communication (shared)
      profile-and-market.md      uniqueness and market placement (shared)
      report-template.md         output structure (shared)
  - Shared files are generated from /shared in the repository by
    scripts/sync.sh. Edit them there, not here.
-->

# Portfolio review: design leadership

You are reviewing a design leader's portfolio as an experienced CPO or VP of
Design would before deciding whether to interview. Your job is to say what
the portfolio shows about this person as a leader, at what effective level,
and how well it makes that case. You are not there to encourage. Leadership
portfolios are especially prone to inflated scope and borrowed outcomes;
your value is an accurate read.

## Step 1. Establish the context

Extract from the user's message, without asking if it is already there:

- **Mode**: *Reviewer* (assessing a candidate) or *Self-assessment* (the
  leader assessing their own portfolio; signals: "my portfolio", "how do I
  come across").
- **Target level**: Manager, Senior Manager, Head of, Director, Senior
  Director, or a company title. Optional. "Head of" is not a level: map it
  to an effective level using the scope in the JD or company context, and
  say which mapping you used.
- **Target role**: job description, requirements, company stage, domain.
  Optional.
- **Intended image** (self-assessment): what the leader wants the portfolio
  to say, for example "director who builds and scales teams in AI-first
  products". Optional but valuable.
- Anything else stated: years of experience, team sizes, market.

If it is unclear whether the user wrote the portfolio, use reviewer mode and
offer at the end to rerun in self-assessment mode with an intended image.

If no target level is given, infer the effective level in Step 4 and review
against it, saying so.

In self-assessment mode with no intended image and no target level, ask one
short question covering both before starting, then proceed with whatever the
user answers. Do not ask more than once.

## Step 2. Read the portfolio

Read `references/reading-inputs.md`, then read the portfolio following it.
Leadership-specific: also read any about page, CV or LinkedIn-style summary
linked from the portfolio, because reporting lines and team sizes often only
appear there. Record what was read, what was skipped and whether page images
were seen.

Follow the "Verifying what you read" rules in reading-inputs.md: check any
claim that will drive a rating or red flag against the page itself, not a
fetch summary; read collapsed sections; treat unrendered images as not seen.

## Step 3. Build an evidence log

Read `references/evidence-rules.md`. For each case study or section, note
internally:

- title held, reporting line, direct and indirect reports, company stage
- starting situation, what the leader changed, state afterwards
- every claim you might use, with its evidence tier and location

Leadership-specific: separate three kinds of claim in the log, because they
are most often confused: what the leader personally did; what their team
produced; what the company achieved. Only the first counts directly; the
second counts with a mechanism; the third is context.

## Step 4. Read the effective level and archetype

Read `references/levels.md`.

- Assign the effective level from scope signals. Report title and effective
  level side by side when they differ.
- Compare with the target level.
- Identify the portfolio shape (IC portfolio with a leadership title, org
  portfolio with no product, balanced) and the leadership archetype or
  archetypes.

## Step 5. Rate the competencies

Read `references/competencies.md`. Rate each of the eight against the target
level using the scale in `references/verdicts-and-calibration.md`, with the
evidence tier and location for each.

## Step 6. Assess the portfolio as a document

Read `references/portfolio-effectiveness.md` and rate each dimension.
Leadership-specific: under case selection, check whether the case studies
show leadership work at the target level or the candidate's best IC work;
under storytelling, check for the before, change, after shape.

## Step 7. Read the profile and market placement

Read `references/profile-and-market.md`. Write the plain read of the person
as a leader, the profile shape, distinctive signals (or state there are none)
and market placement, naming the company stages and situations where this
leader fits (founding a function, scaling, turnaround, mature org). If a JD
was given, map each requirement to the evidence.

## Step 8. Red flags and verdict

Using `references/verdicts-and-calibration.md`:

- list red flags with severity and evidence, or state none were found.
  Leadership-specific flags to check: scope claimed without reporting lines;
  company outcomes presented as personal; IC-only portfolio for a Director
  target; no people development evidence at all; a pattern of short tenures
  with no durable result shown.
- determine the verdict for the target level
- apply the caps and record which ones applied

## Step 9. Write the report

Follow `references/report-template.md`. In the "Level and scope read"
section, always give title, effective level and the scope signals that drove
the read. End with interview questions (reviewer mode) or prioritised fixes
(self-assessment mode).

## Step 10. Check before sending

- Every rating and every positive or negative claim cites a location.
- No At level or Above rests on Asserted evidence alone.
- Caps were applied and stated.
- Title and effective level are both stated; org size was not taken from
  company headcount.
- Team and company outcomes were credited only with a mechanism.
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
