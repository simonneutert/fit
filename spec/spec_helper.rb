require 'simplecov'
SimpleCov.add_filter '/spec/'
SimpleCov.start

SPEC_ROOT = File.dirname(__FILE__)

$LOAD_PATH.unshift SPEC_ROOT, File.join(SPEC_ROOT, '..', 'lib')

require 'rspec'
require 'rspec/its'
require 'fit'

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
end

def example_file(filename)
  File.open File.join(SPEC_ROOT, 'support', 'examples', filename)
end
