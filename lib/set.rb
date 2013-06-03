class Setlist
  attr_accessor :show_date

  def initialize (show_date)
    @show_date = show_date
  end

  def slice_zero
    date_array = show_date.split("-")
    date_array.each do |date|
      if date.start_with? "0"
        date.slice!(0)
      end
    end
    show_date = date_array.join("-")
  end

  def parse_year
    show_date.split('').last(2).join
  end

  def set_url
    show_date = slice_zero
    url = "http://www.cs.cmu.edu/~mleone/gdead/dead-sets/"
    url << parse_year
    url << "/"
    url << show_date
    url << ".txt"
  end

  def print_url
    show_text = open(set_url)

    puts "---------------------------------------------------------------------------"

    show_text.each_line do |line|
      puts line
    end
    puts "---------------------------------------------------------------------------"
    puts "-Save this show to favorites? Type y"

  rescue OpenURI::HTTPError => ex
    puts "---------------------------------------------------------------------------"
    puts "This is not a valid Grateful Dead concert date.\nPlease enter a different date."
    puts "---------------------------------------------------------------------------"
  end


end
