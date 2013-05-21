require_relative 'lib/set.rb'

puts "Please enter the date of a Dead show using the MM-DD-YY format:"

show = gets.chomp

set = Set.new(show)
set.print_url
# show.to_s
# puts show
# puts print_url
# `open #{http://www.cs.cmu.edu/~mleone/gdead/dead-sets}

