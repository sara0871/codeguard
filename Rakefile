# encoding: utf-8
require 'rubygems'
require 'bundler'

Bundler::GemHelper.install_tasks
Bundler.setup

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')

require 'codeguard'

namespace :codeguard do
  task :install do
    Codeguard.install
  end

  task :help do
    Codeguard.help
  end

  task :diff do
    Codeguard.diff
  end
end

task default: 'codeguard:help'
