<!--
  SHARED FILE. Edit in /shared, then run scripts/sync.sh.
-->

# Verdicts and calibration

<!--
  Why this file exists: without explicit caps and tone rules, model reviews
  drift towards praise. The portfolio is written to impress, the user often
  wants reassurance, and positive language is the model's default. This file
  is the counterweight. If you change the scale, change the report template
  too.
-->

## Ratings per competency

Each competency is rated against the expectations of the **target level**
(the level supplied by the user, or the level the portfolio reads as if none
was supplied).

| Rating | Meaning |
| --- | --- |
| **Above** | Clear Demonstrated or Specific evidence of the next level's expectations |
| **At level** | Demonstrated or Specific evidence meeting this level's expectations |
| **Below** | Evidence exists but falls short of this level, or is only Asserted |
| **Not shown** | Expected in the work presented, no evidence |
| **No opportunity** | The work presented gives no reason to expect it |

No numeric scores and no averages. Numbers suggest a precision the evidence
does not have and invite averaging, which hides the shape of the profile.

Add a confidence note where it is low, especially for craft and visual
quality when page images were not seen.

## Verdict scale

The verdict answers one question: **what level of hiring confidence does this
portfolio support for the target role?** It is a judgment of the portfolio as
evidence, not of the person's worth.

| Verdict | What the portfolio supports |
| --- | --- |
| **Exceptional** | Above level in several core competencies with Demonstrated evidence, no serious red flags, a distinct and credible niche. Rare. Most strong portfolios are not this. |
| **Strong hire** | At level across all core competencies for the level, Above in at least one, evidence mostly Demonstrated or Specific. |
| **Hireable** | At level in most core competencies, no Not shown on a core competency, no serious red flags. Worth an interview. |
| **Unsure** | Mixed evidence: one or more core competencies Below or Not shown, or the portfolio is too thin, too generic, or too hard to read to judge. An interview might resolve it; the portfolio alone does not. |
| **No hire** | Core competencies for the level are missing or clearly below, or a disqualifying red flag. |

Core competencies per level are defined in each skill's own levels file.

### Caps

Apply these before writing the verdict. State any cap that applied.

- If any core competency rests only on Asserted evidence, the verdict cannot
  exceed **Hireable**.
- If any core competency is Not shown, the verdict cannot exceed **Unsure**.
- If a Serious red flag is present, the verdict cannot exceed **Unsure**
  unless the rest of the evidence is strong, and the report must say why it
  was not capped.
- A Disqualifying red flag means **No hire** for this role.
- **Exceptional** requires Demonstrated evidence. Specific is not enough.
- If visual assessment was not possible, a craft-led role cannot get a
  verdict above **Hireable**, and the report says the verdict is provisional.

### Level mismatch

If the portfolio reads as a different level than the target, the verdict is
for the target level, and the report states the level it does read as. A
strong Senior portfolio applied to a Principal role is usually Unsure for
Principal, not Strong hire.

## Red flags

Listed separately from the verdict. Each has a severity and the evidence that
triggered it.

| Severity | Meaning | Examples |
| --- | --- | --- |
| **Disqualifying** | Should end the process for this role | Work presented as the candidate's that is clearly someone else's; fabricated or contradictory claims; confidential client material exposed in a way that shows poor judgment |
| **Serious** | Needs a convincing answer in interview | No individual contribution visible in any case study; scope claims contradicted by the work; level claimed far above what the work shows; all case studies end at handoff for a senior role |
| **Watch** | Worth probing, not decisive | Most recent work several years old; very short tenures without context; outcomes asserted without baselines throughout; one archetype dominating when the JD needs another |

Do not invent red flags to appear balanced. If there are none, say so.

## Tone rules

<!--
  These rules matter as much as the rubric. Keep them.
-->

- Lead with the verdict and the plain read, then the evidence.
- Flat, factual language. No superlatives unless the evidence is itself
  exceptional and quoted. Banned unless directly evidenced: "world-class",
  "top-tier", "top-decile", "unequivocally", "rare combination", "visionary",
  "low-risk, high-reward", "from day one".
- Every positive judgment cites evidence. Every negative judgment does too.
- Say plainly when something is not good enough: "The case studies do not
  show research the designer ran" rather than "there may be an opportunity to
  highlight research further".
- Do not soften the verdict because the user is the portfolio's author. Self-
  assessment users need the honest read most; that is the reason the tool
  exists.
- Do not pad weak areas with praise, and do not pad strong areas with
  criticism. Balance comes from accuracy, not symmetry.
- Avoid hedging fog. One clear caveat beats five "may"s.

## Anti-example

<!--
  A real pattern observed in AI portfolio reviews, anonymised. Keep it as a
  reference for what this tool must not produce.
-->

The following is the kind of output this tool exists to avoid:

> "Unequivocally yes. Represents a low-risk, high-reward leadership hire for
> any scale-up or enterprise tech firm. Top-decile operator. Co-leading 100+
> person product orgs. Signals zero tolerance for bureaucratic models."

What is wrong with it:

- "Top-decile" is an invented statistic.
- "Any scale-up or enterprise" ignores fit entirely.
- "100+ person org" was taken from a company-level number with no reporting
  structure shown.
- "Zero tolerance for bureaucracy" is a personality trait inferred from a
  slogan.
- Company fundraising was credited to the designer.
- There is no evidence cited, no gap named, and no question left for the
  interview.

The same review done properly would keep what is genuinely distinctive (for
example a consistent pattern of metric-led case studies and cross-border team
leadership, if the work shows it), cite where it appears, rate it against the
level, and state what the portfolio does not prove.
