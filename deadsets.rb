require_relative 'lib/set.rb'
require 'open-uri'

require_relative 'bootstrap_ar'
database = ENV['FP_ENV'] || 'development'
connect_to database

def get_request
  puts "WELCOME TO DEADSETS.\nPlease enter the date of a Grateful Dead concert using the MM-DD-YY format:"

  show = gets.chomp


  set = Setlist.new(show)
  set.print_url

  puts "-Save this show to favorites? Type y"
  puts "-To access favorites, type f"
  puts "-Type q to quit Deadsets"
  puts "---------------------------------------------------------------------------"

  user_input = gets.chomp

  if user_input == "q"
    quit_app
  end

  if user_input == "y"
    add_fav(set.show_date)
  end

  if user_input == "f"
    access_favs
  end

  get_request
end

def quit_app
    exit_img = open("http://zachkeller.net/deadsets/syf.txt")
    exit_img.each_line do |line|
      puts line
    end
    exit
end

def add_fav(date)
  Favorite.create(:date => date)
end

def access_favs
  favorites = Favorite.all
  favorites.each do |fav|
    puts fav.date
  end
end

get_request