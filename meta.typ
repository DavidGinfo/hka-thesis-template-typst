// Aggregator module: metadata (from config.toml) + all helpers.
// Content files should only import from this file.

#import "lib/acronyms.typ": *
#import "lib/figures.typ": *
#import "lib/tables.typ": *
#import "themes/code.typ": *

// Read metadata centrally from config.toml.
#let _cfg = toml("config.toml")
#let _opt(value) = if value == none or value == "" { none } else { value }

#let isDraft = _cfg.is-draft
#let isTwoSided = _cfg.is-two-sided
#let author = _cfg.author
#let title = _cfg.title
#let thesisType = _cfg.thesis-type
#let keywords = _cfg.keywords

#let reviewerOne = _cfg.reviewer-one
#let reviewerTwo = _opt(_cfg.reviewer-two)
#let advisorOne = _cfg.advisor-one
#let advisorTwo = _opt(_cfg.advisor-two)

#let department = _cfg.department
#let institute = _cfg.institute
#let university = _cfg.university
#let company = _cfg.company

#let statutoryDeclarationPlaceAndDate = _cfg.statutory-declaration-place-and-date
#let completionPeriod = _cfg.completion-period

// Note box (only visible in draft mode).
#let note(body) = if isDraft {
  block(
    fill: yellow.lighten(60%),
    stroke: 1pt + orange,
    inset: 8pt,
    radius: 4pt,
    width: 100%,
  )[*Anmerkung:* #body]
}
