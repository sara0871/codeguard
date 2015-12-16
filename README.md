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

Check [HELP](HELP.md) for more information or run `codeguard help`

### Customize codeguard

Run `codeguard generate` to create a configuration file (`.codeguard.yml`).
If you want to check your project with `Rubocop` and `Reek` only you could do:

```yaml
:include:
- :reek
- :rubocop
```
Passing options directly to command will override the config.
