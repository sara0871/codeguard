# encoding: utf-8
require 'rubygems'
require 'bundler'

Bundler::GemHelper.install_tasks

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')

require 'codequest/styleguide'

task :install_styleguide do
  Codequest::Styleguide.run
end

task default: :install_styleguide
