require 'test/unit'
require_relative '../../lib/set.rb'

class TestSet < Test::Unit::TestCase
  def test_1_set_url_is_correct
    set = Setlist.new("3-26-90")
    assert_equal("http://www.cs.cmu.edu/~mleone/gdead/dead-sets/90/3-26-90.txt", set.set_url)
  end

  def test_2_year_is_last_2_characters_from_show_date_string
    set = Setlist.new("12-31-78")
    assert_equal("78", set.parse_year)
  end

  def test_3_chop_zero_from_month
    set = Setlist.new("04-1-90")
    assert_equal("4-1-90", set.slice_zero)
  end

  def test_4_chop_zero_from_month
    set = Setlist.new("6-03-90")
    assert_equal("6-3-90", set.slice_zero)
  end

  def test_5_test_url_of_chopped_date
    set = Setlist.new("06-03-90")
    assert_equal("http://www.cs.cmu.edu/~mleone/gdead/dead-sets/90/6-3-90.txt", set.set_url)
  end

  def test_6_test_url_of_chopped_date_with_irregular_argument
    set = Setlist.new("6-03-90")
    assert_equal("http://www.cs.cmu.edu/~mleone/gdead/dead-sets/90/6-3-90.txt", set.set_url)
  end

  def test_7_test_url_of_chopped_date_with_irregular_argument
    set = Setlist.new("06-3-90")
    assert_equal("http://www.cs.cmu.edu/~mleone/gdead/dead-sets/90/6-3-90.txt", set.set_url)
  end

  def test_8_test_url_of_chopped_date_with_irregular_argument
    set = Setlist.new("10-09-94")
    assert_equal("http://www.cs.cmu.edu/~mleone/gdead/dead-sets/94/10-9-94.txt", set.set_url)
  end

end