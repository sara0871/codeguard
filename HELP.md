Availables Commands
---
* `styleguide help`    - show help message
* `styleguide install` - install config for current project
* `styleguide diff`    - check if the files were not modified

Installed Configuration
---
* coffeelint (http://www.coffeelint.org/)
* js_hint (https://github.com/damian/jshint)
* rubocop (https://github.com/bbatsov/rubocop)
* scss_lint (https://github.com/brigade/scss-lint)
* pre_commit (https://github.com/jish/pre-commit)

Local Setup
---
* `.gitmessage` file will be added as a template in .git/config
* `git config pre-commit.ruby` will be added for rvm users. If ruby
  version/gemset is changed then you should run `styleguide install`
  again.
