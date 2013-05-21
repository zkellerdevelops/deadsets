require 'test/unit'
require_relative '../deadsets.rb'

class TestDeadsetsUnit < Test::Unit::TestCase

  def test_01_show_date_to_string
    show = `ruby deadsets.rb 3-26-90`
    assert_equal("3-26-90", show.chomp)
  end

  def test_01b_show_date_to_string
    show = `ruby deadsets.rb 12-31-78`
    assert_equal("12-31-78", show.chomp)
  end

end