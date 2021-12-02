# Adhoc DBC Programs

A loose collection of adhoc programs designed to fix all manner of one-time issues. These are typically run from the Impact scheduler with a high priority (a lower number) - 25 is a good default. This will have these jobs run prior to reports, which will hopefully have their fixes be reflected in later programs.

These processes are named:

> "a" + YYMMDD + [1-9] + ".ps"

## Included DBC programs

- a1805251.ps - fix Impact salary dates based on file of recent history sent by LAGOV
- a1806151.ps - adds TLET codes and term letter dates to a pre-generated list of MEME records that the LAGOV 834 did not term completely
- a1902151.ps - repair termed EGWP record on employees where the record existsed only to bill EGWP for their spouse. This is a fix for a issue caused by the TRR during the 2018 VibrantRx transition.
- a2005061.ps - close duplicate OA letter events created by `elg0011` on 2020-05-06
- a2112022.ps - cleanup LBLA records created for the 2022 AE (by `elg2500`), but using the 2021 file by mistake.
