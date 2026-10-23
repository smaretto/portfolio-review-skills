# Contributing

## Where to edit

- **Shared rules** (evidence, verdicts, tone, inputs, portfolio
  effectiveness, market placement, report template): edit in `shared/`, then
  run `scripts/sync.sh`. Never edit the copies inside `skills/*/references/`;
  they are overwritten.
- **IC-specific** competencies and levels:
  `skills/portfolio-review-ic/references/`.
- **Leadership-specific** competencies and levels:
  `skills/portfolio-review-leadership/references/`.
- **Workflow**: each skill's `SKILL.md`. Keep the two workflows aligned step
  for step; mark differences as "Leadership-specific".

Run `scripts/sync.sh --check` before opening a pull request.

## Principles to keep

These are the reasons the skills exist. Changes that weaken them need a
strong case.

1. Evidence tiers decide ratings. Assertions alone never reach At level.
2. Caps and tone rules keep reviews from drifting into praise.
3. Every "At level" description must be observable in a portfolio.
4. Scope decides level, not title or years.
5. The portfolio as communication is assessed separately from the designer.
6. No invented statistics, rankings or percentiles.
7. The skills say what they could not read or cannot judge.

## Good contributions

- Sharper per-level expectations, especially where current practice has
  moved (for example what counts as baseline prototyping).
- New archetypes with expected spikes and watch-outs.
- Better handling of input sources as tools change (update the table in
  `shared/reading-inputs.md`).
- Example reviews of public portfolios, with the portfolio author's consent,
  showing calibration at different levels.
- Translations of the report template.

## Style

- Plain, flat language. No em dashes.
- Comments explain why a rule exists, not only what it does.
- Keep `SKILL.md` files under about 300 lines; move detail into references.
