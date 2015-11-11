# Coding style @ codequest
### One stop shop for style
![Eat glitter for breakfast](eat-glitter.jpg)

At code quest we enjoy tools that standardize and improve code style. As a team,
 the less menial stuff you have to worry about the better your code review is.
In essence this gem is a source of linter configs.
**Feel free to suggest improvements.**


### Installation
Add to your Gemfile:
```ruby
group :development, :test do
  gem 'codeguard'
end
```
and run `bundle install`.

You can check available options by running: `codeguard help`

### TODO 0.2.0
1. Add Specs
2. JS checks (js lint)
3. pre-commit
4. Add filtering options for setup (e.g. `codeguard install --exclude jshint jslint`)
5. Think about reoganising structure for configuration files
6. Automate local setup for dependencies (e.g. pre-commit)
