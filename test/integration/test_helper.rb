ENV["RAILS_ENV"] = "test"
require 'shoulda'

require "config/environment.rb"

puts "Running tests for #{Delayed::Worker.backend}"

require "rails/test_help"
require_relative '../support/test_job'
require_relative '../support/failing_test_job'

Rails.backtrace_cleaner.remove_silencers!

