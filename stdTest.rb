require "std"
require "test/unit"

class TestStdFunction < Test::Unit::TestCase
    def testSimple
        assert(std().nan?)
        assert(std(nil).nan?)
        assert(std([]).nan?)
        assert_equal(std([1, 1, 1]), 0)
        assert_equal(std([1, 3, 5]), Math.sqrt(8.0/3))
        assert_equal(std([1.0, 3, 5]), Math.sqrt(8.0/3))
        assert_equal(std([-1, 0, 4]), Math.sqrt(14.0/3))
        assert(std([1, "b", "c"]).nan?)
    end
end


