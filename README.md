Coding style @ codequest
---

Placeholder for an explanation why we're doing it.

Installation
---
Add your Gemfile:
```ruby
group :development, :test do
  gem 'codequest-styleguide', path: '../styleguides'
end
```
and run `bundle install`.

You can check available options by running: `styleguide help`

TODO 0.1.0
---
1. Update README

TODO 0.2.0
---
1. Add Specs
2. JS checks (js lint)
3. pre-commit
4. Add filtering options for setup (e.g. `styleguide install --exclude jshint jslint`)
5. Think about reoganising structure for configuration files
6. Automate local setup for dependencies (e.g. pre-commit)
