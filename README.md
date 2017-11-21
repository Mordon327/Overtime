# Overtime App

## Key requirement: company needs documentation that salaried employees did or didn't get overtime each week

- x post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- Auditlog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- x Icons from glyphicon
- x Update the styles for forms

## Refactor TODOS:
- x Refactor user association integration test in post_spec
- Refactor posts/_form for admin
- x Fix post_spec.rb:82 to use factories
- x Fix post_spec.rb:50