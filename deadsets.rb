require_relative 'bootstrap_ar'

database = ENV['FP_ENV'] || 'development'
connect_to database

def get_request
  puts "WELCOME TO DEADSETS.\nPlease enter the date of a Grateful Dead concert using the MM-DD-YY format:"
  puts "---------------------------------------------------------------------------"

  show = gets.chomp

  set = Setlist.new(show)
  set.print_url

  puts "---------------------------------------------------------------------------"
  puts "-To access favorites, type f"
  puts "-Type q to quit Deadsets"
  puts "-Press enter to look up another concert"
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
  puts "---------------------------------------------------------------------------"
  favorites = Favorite.all
  favorites.each do |fav|
    puts fav.date
  end
  puts "---------------------------------------------------------------------------"
end

get_request
