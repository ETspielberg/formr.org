# Formr.org Change Log

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project adheres to [Semantic Versioning](http://semver.org/).

## [0.19.10] - 31.01.2022
## [0.19.9] - 31.01.2022
* Minor bug fixes

## [0.18.0] - 27.05.2017
### Added
- A new queuing system to process run sessions
- An overview of sessions waiting in queue
- A new Run Unit called Waiting Time (see documentation)

### Changed
- Optimizing the getting of results over the API
- Some minor bug fixes

## [0.17.21] - 25.02.2019
* Minor bug fixes

## [0.17.20] - 03.01.2019
### Fixes
https://github.com/rubenarslan/formr.org/issues/405
https://github.com/rubenarslan/formr.org/issues/404
https://github.com/rubenarslan/formr.org/issues/398
https://github.com/rubenarslan/formr.org/issues/395
https://github.com/rubenarslan/formr.org/issues/392
https://github.com/rubenarslan/formr.org/issues/391
https://github.com/rubenarslan/formr.org/issues/390
https://github.com/rubenarslan/formr.org/issues/389
https://github.com/rubenarslan/formr.org/issues/382

## [0.17.18] - 21.09.2018
### Fixes
- https://github.com/rubenarslan/formr.org/issues/379
- https://github.com/rubenarslan/formr.org/issues/332
- https://github.com/rubenarslan/formr.org/issues/370
- https://github.com/rubenarslan/formr.org/issues/347
- https://github.com/rubenarslan/formr.org/issues/355
- https://github.com/rubenarslan/formr.org/issues/378
- https://github.com/rubenarslan/formr.org/issues/376
- https://github.com/rubenarslan/formr.org/issues/374
- https://github.com/rubenarslan/formr.org/issues/319
- https://github.com/rubenarslan/formr.org/issues/292

## [0.17.14] - 14.06.2018
###  Added
* Logout action for RUNs

## [0.17.13] - 12.06.2018
###  Fixed
* Show-ifs: Use previous show-if value for paginated survey

## [0.17.12] - 25.05.2018
###  Added
* Cookie consent alert

### Changed
* Meta tag info

## [0.17.11] - 15.05.2018
### Fixed
* Fix 'sticky' value for choice item types

## [0.17.10] - 07.05.2018
### Fixed
* Optionally uploading a file for 'File' item-type.

## [0.17.9] - 27.04.2018
### Fixed
* Bug #342
* Fix Number item-type value when it is used as counter

## [0.17.8] - 25.04.2018
### Fixed
* Connection to the Open Science Framework
* Patch Commit

## [0.17.7] - 20.04.2018
### Fixed
* Do not save values for hidden items
* RUN file uploads

## [0.17.6] - 18.04.2018
### Added
* Alert users if cookies are not activated
* GET parameter to force re-calculation of show-if for paged-surveys

### Changed
* UI of the account page

### Fixed
* Testing Email Accounts (send self-mail)
* Monkey bar session link #340
* Default run export name #341

## [0.17.5] - 05.04.2018
### Fixed
* Testing "Survey" for surveys with paging enabled

## [0.17.4] - 22.03.2018
### Changed
#### Bug Fixes
* Use webshim calendar widget in all browsers.
* Fix Check_Item "optional" flag glitch
* Add "in_maintenance" config flag to prevent user access when site is under maintenance
* "Quick Upload" fix for surveys

## [0.17.3] - 19.03.2018
### Added
* Surveys can be configured to be "paginated". Users can be provided with page numbers where they can click back and forth to make corrections.
* Uploaded files associated to a run can now be easily deleted and upload file URL can also be easily copied.
* Users can re-send the email verification link.

## [0.17.2] - 28.02.2018
### Changed
* Fix rating button glitch (range can be reversed)
* Issue #332
* Issue #333

## [0.17.1] - 28.02.2018
### Changed
* Replace underscores in run names to hyphens

## [0.17.0] - 28.02.2018
### Added
* Sub-domain definition for studies
* Option to hide survey results

### Changed
* Architectural change.

## [0.16.17] - 09.02.2018
### Changed
* Architectural change.

## [0.16.16] - 31.01.2018
### Changed
* Add option to use [XSendFile] (https://tn123.org/mod_xsendfile/) for downloads

## [0.16.15] - 26.01.2018
### Changed
* Fixed PHP-side survey validation so that entered data is not lost, partially addressing #327
* Added further ways to specify expiry #305
* UI Changes in Survey settings

## [0.16.14] - 11.07.2017
### Changed
Bug fix release.
* See [Github](https://github.com/rubenarslan/formr.org/issues/314) for details
* Compute dynamic value using current survey object

## [0.16.13] - 02.10.2017
### Changed
Bug fix release.
* See [Github](https://github.com/rubenarslan/formr.org/issues?utf8=%E2%9C%93&q=milestone%3Av0.16.13%20) for details
* add mc_horizontal class
* fix some CSS bugs in new material design
* several UI fixes

## [0.16.12] - 27.07.2017
### Changed
* Publications moved to new page

## [0.16.10] - 06.07.2017
## [0.16.11] - 06.07.2017
### Changed
* Fix sign-up bug
* Get right auth credentials for email queue accounts

## [0.16.9] - 05.07.2017
### Added
* Use paragonie/halite for user accounts encryption - https://paragonie.com/project/halite

### Changed
* Fix bug allowing unverified email accounts to login.

## [0.16.8] - 04.07.2017
### Changed
* Fix bug preventing user email change

## [0.16.6] - 02.06.2017
### Added
* Config item for phpmailer SMTPOptions
* Quick links to runs and surveys on admin dash board

### Changed
* Fix broken sign up referrer code functionality
* Remove newsletter subscription

## [0.16.5] - 11.05.2017
### Added
* CSRF protection

## [0.16.4] - 05.05.2017
### Added
* Variable to get number of participants in R `.formr$nr_of_participants`

### Changed
* Minor Bug Fixes: Form error messages, missing variables, CSS.

## [0.16.3] - 21.03.2017
### Changed
* HTML meta-tags
* Fix broken run unit SkipForward link

## [0.16.2] - 15.03.2017
## [0.16.1] - 16.03.2017
### Changed
* Fix CSS bugs

## [0.16.0] - 14.03.2017
### Changed
* New User Interface

## [0.15.7] - 09.03.2017
### Changed
* Bug fix: Long query optimization

## [0.15.6] - 13.02.2017
### Changed
* Bug fix: Fix PHP warnings


## [0.15.5] - 08.02.2017
### Changed
* Bug fix: Fix PHP warnings
* Issues closed:
   * https://github.com/rubenarslan/formr.org/issues/275
   * https://github.com/rubenarslan/formr.org/issues/276
   * https://github.com/rubenarslan/formr.org/issues/277
   * https://github.com/rubenarslan/formr.org/issues/278
   * https://github.com/rubenarslan/formr.org/issues/280

## [0.15.4] - 19.12.2016
### Changed
* Bug fix: Clear email attachments after email is sent
* Increase timeout limits for CURL requests

## [0.15.3] - 2.12.2016
### Changed
* Bug fix: Cron should be processed if it is locked.

## [0.15.2] - 1.12.2016
## [0.15.1] - 1.12.2016
### Changed
- Configure re-try limits for email queue items
- reset smtp connection if queue item fails

## [0.15.0] - 1.12.2016
### Added
* E-mail queuing
   * Setting: `$settings['email']['use_queue']` - Should queue be used or not?
   * Setting: `$settings['email']['queue_loop_interval']` - Number of seconds for which deamon loop should rest before getting next batch
* Run management interface for superadmin. In this interface the superadmin can determine which run is allowed to run in the cron and whose cron should be forked in an independent process.
* MySQL database v21: add email queue table, run property for process forking and a _sent_ flag to email log table.

### Changed
* Memory limits to exports are now configurable.
* Increased weekly limit on how many e-mails an address can receive.
* Bug Fixes:
   * https://github.com/rubenarslan/formr.org/issues/270
   * https://github.com/rubenarslan/formr.org/issues/244
   * https://github.com/rubenarslan/formr.org/issues/272

## [0.14.3] - 22.11.2016
### Changed
* Fix range issues for Item_random

## [0.14.2] - 17.11.2016
### Changed
* Bug fix on OR operator

## [0.14.1] - 7.11.2016
### Changed
* Logout page should also logout anonymous run sessions
* A page to redirect to after logout can be specified using the get parameter *_rdir*

## [0.14.0] - 1.11.2016
### Added
* When sending 'run jobs' to the gearman server, a high priority is used.
* User unique identifies for gearman jobs to avoid duplicates

### Changed
* Configurable memory limits
* Bug Fixes
  * Fix query to get _most recent mail_ in the Email Run Unit
  * properly parse cron logs generated when running gearman

## [0.13.3]
### Changed
* Increased memory limit when exporting results in JSON
* When backing-up results, only items saved in results table are exported
* Minor bug fixes

## [0.13.2]
### Changed
* Fixed PHP warnings

## [0.13.1]
### Changed
* Fixed PHP warnings

## [0.13.0]
### Added
* Reminders now processed as unit sessions. Researchers are able to see how many times a particular reminder has been sent to a participant.
* Actions in "User Overview" can be performed on multiple participants at the same time:
  * Deleting Sessions
  * Moving sessions to a position in the run
  * Sending reminders
  * Setting test status
* Users can choose to execute email units (i.e. send emails) only when user is not currently active on a study using the option in the email run unit.
* New panic button to temporarily de-activate run in case of emergency: Functions of the panic button:
  * lock's run
  * disable's run cron
  * makes run private.
* [major feature] Background session processing is now distributed and make asynchronous by using Gearman

### Changed
* Error reporting on survey upload improved to point out what individual item caused issues
* Modified study examples: Experience sampling and Longitudinal studies.
* Bug fixes:
  * [Issue #262](https://github.com/rubenarslan/formr.org/issues/262)
  * [Issue #265](https://github.com/rubenarslan/formr.org/issues/265)
  * [Issue #266](https://github.com/rubenarslan/formr.org/issues/266)


## [0.12.7]
### Changed
* Update documentation
* Update sample studies
* improve handling of debugger with iframes

## [0.12.6]
### Added
* Support for deprecated 'request' api parameter

## [0.12.5]
### Changed
* Re-factor API to accept json formatted requests
* API bug fixes

## [0.12.4]
* Edit documentation

## [0.12.3]
* Fix bug on run users listing
* Edit publications documentation

## [0.12.2]
* Fix bug on run users listing
* Edit publications documentation

## [0.12.1]
* Minor bug fixes

## [0.12.0]
### Added
* Introduced *special run units*:
  * Reminders
  * Service Message
  * Overview Script
* Possibility to add multiple reminders.
* Reminder sending UI modified to support multiple reminders
* much more complex feedback (including JS-graphs etc.) now possible because we embed iframes

### Changed
* run/survey import/export improved
* some UI improvements

## [0.11.9]
### Added
* Use iframes for feedback

## [0.11.8]
* Debug: Log session codes for problematic sessions
* Minor bug fixes

## [0.11.7]
* Bug fixes of PHP warnings

## [0.11.6]
* Minor bug fixes
* Revert previous login cookie logic

## [0.11.5]
### Changed
* Re-factor user login procedure
* Non-registered users get no persistent cookie

## [0.11.4]
* Tactical revert of forged dependencies

## [0.11.3]
### Changed
* Run owner's email should be flagged as 'self-mailing'
* Add validation request tokens to survey forms

## [0.11.2]
* Fix accessing external module over the API by specifying non-restrictive routes

## [0.11.1]
### Added
* Show exired sessions in UI
* Email bug fixes

## [0.11.0]
### Added
* Export run survey results
* Unlink Surveys to separate confidential from experimental data.
### Changed
* Major bug fixes
* pause module was simplified (if an hour of day is set, the pause will only expire once per day) for diaries
* improved external module to simplify integration with e.g. [SoSci Survey](https://github.com/rubenarslan/formr.org/wiki/How-to-combine-formr-with-surveys-from-SoSci-survey) (how to)
* surveys can be renamed, run unit modules description default to survey names

## [0.10.4]
* Few bug fixes

## [0.10.3]
* Few bug fixes

## [0.10.2]
* Few bug fixes

## [0.10.0]
# Changed
* Re-factor show-if evaluation functionality

## [0.9.0]
### Added
* Open Science Framework API connection
  * barring unforeseen changes on the side of osf.io it is now possible to connect runs to an OSF project. Currently, you can only export the Run-JSON there (in essence, saving all of the run structure and survey items). You can use this for pre-registration or version tracking.
### Changed
* improvements to testing
  * when the test button is clicked in the edit run view, test emails are sent to your admin email address, not mailinator
  * there are new buttons when testing surveys: a light bulb shows items that were hidden on the page, a magnifying glass shows debugging info (item names, requests sent to openCPU)
  * our openCPU debugger (the accordion with info on the openCPU request) is now shown whenever there is an r problem (or you click the magnifying glass). it has the option to download the r code or the rmarkdown. That way you can edit it in Rstudio, which has much better code highlighting for debugging.
* improvements to the survey module
  * now hidden items work consistently: every showif is only called once unless the return value in R is `NA`.
  * only items on the currently visible page are evaluated (before this calculate items at the end of the survey were also evaluated)
  * we've minimised costly openCPU requests
* there are no more flashes of unstyled content (where the mc_buttons only appear after a moment)

## [0.8.2]
### Changed
* Changed URL slugs for public URLs
* CSS fixes

## [0.8.1]
* bug fix release
* testing how zenodo mints DOIs for releases

## [0.8.0]
### Added
* Items can be shuffled (in and between blocks) now.
* Timed submit buttons allow you to specify a minimum time in which to submit.
* Item tables can be imported straight from Google Docs, reducing the edit-download-upload-cycle previously necessary. Makes collaboration easier.
* A proper test mode
  * you can now create test codes for runs. They're special in that they enable a bar with specific features (auto-filling forms, skipping to the next step in the run/ending a pause).
  * you can now share test codes for runs before releasing the run to the public
  * test codes have names like zanyElephant, which allow you to find them again if you're looking for a specific test case
* the first semblance of an OAuth2.0 API (manual activation needed)
* users can turn off emails from your study for a week or forever if you allow them to.

## [0.7.2]
#### Changed
* Dynamic options are split by a comma

## [0.7.1]
### Added
* Make 'time to last' for cron tasks configurable
* Pass page labels in one OpenCPU request
### Changed
* Append formr version to asset URLs for poisoning

## [0.7.0]
### Changed
* It's now possible to present submit buttons by themselves on a page.
Sometimes this might happen unintentionally if all items on a page are skipped via a showif, but the submit button doesn't have the same showif. 
In this case, previously, the submit button would never be displayed. We decided it would be more consistent to show it once. This shouldn't break anything, but might lead to an extraneous step in some very complex studies 

## [0.1.0 - 0.6.8]
- These release changes are preliminary and the mentioned versions are not recommended for use so ignored in this documentation.

## [UNRELEASED]
 - Architecture re-design(queue manager change, service-based continuous fetching, more TBD)



