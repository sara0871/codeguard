Availables Commands
---
* `codeguard help`    - show help message
* `codeguard install` - install config for current project
* `codeguard setup`   - sets local configuration - this cmd should be run
                        in every local environment
* `codeguard diff`    - check if the files were not modified

Installed Configuration
---
* coffeelint (http://www.coffeelint.org/)
* js_hint (https://github.com/damian/jshint)
* rubocop (https://github.com/bbatsov/rubocop)
* scss_lint (https://github.com/brigade/scss-lint)
* pre_commit (https://github.com/jish/pre-commit)
* jade-lint (https://github.com/benedfit/jade-lint)

Local Setup
---
* `.gitmessage` file will be added as a template in .git/config
* `pre-commit install` will be run - which will register pre-commit hook
* `git config pre-commit.ruby` will be added for rvm users. If ruby
  version/gemset is changed then you should run `codeguard install`
  again.
