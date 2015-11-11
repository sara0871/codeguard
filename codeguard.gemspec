$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'codeguard/version'

Gem::Specification.new do |spec|
  spec.name    = 'codeguard'
  spec.version = Codeguard::VERSION

  spec.authors     = ['Marcin Wyszynski', 'Michal Samluk']
  spec.email       = ['marcinw@codequest.com', 'michal@codequest.com']
  spec.description = 'code quest styleguide'
  spec.summary     = 'Simple installer for configuration files used'\
                     'in code quest.'
  spec.homepage    = 'https://github.com/codequest-eu/codeguard'
  spec.license     = 'MIT'

  spec.files       = `git ls-files`.split($RS)
  spec.executables = `git ls-files -- bin/*`.split("\n").map do |f|
    File.basename(f)
  end

  spec.add_runtime_dependency 'rubocop'
  spec.add_runtime_dependency 'jshint'
  spec.add_runtime_dependency 'scss_lint'
  spec.add_runtime_dependency 'diffy'
  spec.add_development_dependency 'bundler', '>= 1.6.9'
  spec.add_development_dependency 'rake', '~> 10.3'
end
