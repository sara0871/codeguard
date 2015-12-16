Availables Commands
---
* `codeguard help`        show help message
* `codeguard generate`    generates codeguard configuration
* `codeguard install`     install config for current project
* `codeguard setup`       sets local configuration - this cmd should be run
                          in every local environment
* `codeguard diff`        check if the files were not modified

Available Options
---
Options can be passed only to commands: install, setup, diff

* `--include rubocop reek`         command will be run including only rubopcop
                                   and reek
* `--exclude js_hint scss_lint`    command will be run exluding js_hint and
                                   scss_lint

Installed Configuration
---
* coffeelint     (http://www.coffeelint.org/)
* js_hint        (https://github.com/damian/jshint)
* rubocop        (https://github.com/bbatsov/rubocop)
* scss_lint      (https://github.com/brigade/scss-lint)
* pre_commit     (https://github.com/jish/pre-commit)
* reek           (https://github.com/troessner/reek)
* slim_lint      (https://github.com/sds/slim-lint)
* git_message    git commits template

Local Setup
---
* `.gitmessage` file will be added as a template in .git/config
* `pre-commit install` will be run - which will register pre-commit hook
* `git config pre-commit.ruby` will be added for rvm users. If ruby
  version/gemset is changed then you should run `codeguard install`
  again.
