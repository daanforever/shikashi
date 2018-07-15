require "rubygems"
require "shikashi"
require "benchmark"
require "ruby-prof"

RubyProf.start
require_relative 'bm3'
result = RubyProf.stop

# Print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)
