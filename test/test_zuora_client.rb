require 'helper'

class TestZuoraClient < Test::Unit::TestCase
  def test_query
    z = ZuoraClient.new('tester', 'qaqa')
    result = z.query('select Id, Name, SKU, CreatedDate from Product')
    assert_not_nil(result)
    assert(result.size > 0)
  end

end
