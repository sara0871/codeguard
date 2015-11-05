# encoding: utf-8
require 'rubygems'
require 'bundler'

Bundler::GemHelper.install_tasks
Bundler.setup


$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')

require 'codequest/styleguide'

namespace :styleguide do
  task :install do
    Codequest::Styleguide.install
  end

  task :help do
    Codequest::Styleguide.help
  end

  task :diff do
    Codequest::Styleguide.diff
  end
end

task default: 'styleguide:help'
