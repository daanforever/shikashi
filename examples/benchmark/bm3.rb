require "rubygems"
require "shikashi"
require "benchmark"

s = Shikashi::Sandbox.new

class NilClass
	def foo
	end
end

Benchmark.bm(7) do |x|

x.report {

	code = "
		500000.times {
		nil.foo
		ArgumentError
		}
		"

	s.run code, Shikashi::Privileges
		.allow_method(:times)
		.allow_method(:foo)
		.allow_const_read(:ArgumentError)
		.allow_const_read(:Array)
		.allow_const_read(:BasicObject)
		.allow_const_read(:Bignum)
		.allow_const_read(:Class)
		.allow_const_read(:Comparable)
		.allow_const_read(:ConditionVariable)
		.allow_const_read(:Enumerator)
		.allow_const_read(:Enumerable)
		.allow_const_read(:Hash)
		.allow_const_read(:Fixnum)
		.allow_const_read(:FalseClass)
		.allow_const_read(:Float)
		.allow_const_read(:IndexError)
		.allow_const_read(:Math)
		.allow_const_read(:Method)
		.allow_const_read(:NilClass)
		.allow_const_read(:Numeric)
		.allow_const_read(:Object)
		.allow_const_read(:String)
		.allow_const_read(:Symbol)
		.allow_const_read(:Random)
		.allow_const_read(:Range)
		.allow_const_read(:Rational)
		.allow_const_read(:String)
		.allow_const_read(:Struct)
		.allow_const_read(:Symbol)
		.allow_const_read(:Time)
		.allow_const_read(:TrueClass)
}

end
