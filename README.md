# Adhoc DBC Programs

A loose collection of adhoc programs designed to fix all manner of one-time issues. These are typically run from the Impact scheduler with a high priority (a lower number) - 25 is a good default. This will have these jobs run prior to reports, which will hopefully have their fixes be reflected in later programs.

These processes are named:

> "a" + YYMMDD + [1-9] + ".ps"

## Included DBC programs

- a1805251.ps - fix Impact salary dates based on file of recent history sent by LAGOV
- a1806151.ps - adds TLET codes and term letter dates to a pre-generated list of MEME records that the LAGOV 834 did not term completely
- a1902151.ps - repair termed EGWP record on employees where the record existed only to bill EGWP for their spouse. This is a fix for a issue caused by the TRR during the 2018 VibrantRx transition.
- a2005061.ps - close duplicate OA letter events created by `elg0011` on 2020-05-06
- a2112022.ps - cleanup LBLA records created for the 2022 AE (by `elg2500`), but using the 2021 file by mistake.
- a2211031.ps - un-term records termed by ESI TRR after CVS submitted their 1st prod file to CMS
- a2212211.ps - change the EGWP eff date for some CVS people (from file) to 2/1/23 - removing it for Jan
- a2308151.ps - Clean up rate records of LIFE by removing unnecessary riders for 1/1/24
- a2311201.ps - Remove term dates from Vantage health plans termed by the Vantage TRR with TRR code 014
- a2404301.ps - Adhoc to restore bad MEME edits from HSAACC from 4/29 back to prior state in history
- a2404302.ps - Adhoc to restore bad MEMB edits from HSAACC from 4/29 back to prior state in history
- a2405011.ps - term all DHH CLIPs for 6/30/24
- a2405012.ps - term all DHH MEMEs for 6/30/24
- a2405013.ps - term all DHH rates for 6/30/24
