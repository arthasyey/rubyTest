require "./numberToCurrency"
require "test/unit"

class TestNumberToCurrencyConverter < Test::Unit::TestCase
    def testSimple
      assert_equal(numberToCurrency([1,1]), '')
      assert_equal(numberToCurrency(nil), '')
      assert_equal(numberToCurrency(0.0), '')
      assert_equal(numberToCurrency(0), '$0')
      assert_equal(numberToCurrency(140), '$140')
      assert_equal(numberToCurrency(1240), '$1.2K')
      assert_equal(numberToCurrency(78192), '$78K')
      assert_equal(numberToCurrency(501200), '$501K')
      assert_equal(numberToCurrency(5853010238), '$5.9B')
      assert_equal(numberToCurrency(-1240123), '($1.2M)')
      assert_equal(numberToCurrency(1115853010238), '$1.1T')
      assert_equal(numberToCurrency(111585301023822), '$112T')
      assert_equal(numberToCurrency(1115853010238222), '')
      assert_equal(numberToCurrency(-111585301023822), '($112T)')
    end
end


