Availables Commands
---
* `codeguard help`     - show help message
* `codeguard generate` - generates codeguard configuration
* `codeguard install`  - install config for current project
                         Available options:
                         --include rubocop reek
                           Install only selected checks
                         --exclude js_hint scss_lint
                           Install excluding some of the checks
* `codeguard setup`    - sets local configuration - this cmd should be run
                         in every local environment
                         Available options:
                         --include rubocop reek ...
                           Install only selected checks
                         --exclude js_hint scss_lint ...
                           Install excluding some of the checks
* `codeguard diff`     - check if the files were not modified

Installed Configuration
---
* coffeelint      (http://www.coffeelint.org/)
* js_hint         (https://github.com/damian/jshint)
* rubocop         (https://github.com/bbatsov/rubocop)
* scss_lint       (https://github.com/brigade/scss-lint)
* pre_commit      (https://github.com/jish/pre-commit)
* reek            (https://github.com/troessner/reek)
* slim_lint       (https://github.com/sds/slim-lint)
* git_message     git commits template

Local Setup
---
* `.gitmessage` file will be added as a template in .git/config
* `pre-commit install` will be run - which will register pre-commit hook
* `git config pre-commit.ruby` will be added for rvm users. If ruby
  version/gemset is changed then you should run `codeguard install`
  again.
