require 'helper'

class TestZuora4r < Test::Unit::TestCase
  def test_query
    z = Zuora4r.new('tester', 'qaqa')
    result = z.query('select Id, Name, SKU, CreatedDate from Product')
    assert_not_nil(result)
    assert(result.size > 0)
  end
end
