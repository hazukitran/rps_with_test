class Game

  def initialize
    puts "Welcome to ROCK, PAPER, SCISSORS"
    puts "Please insert your name: "
  end

  def user_setup
    @user_name = gets.chomp
    puts "Please insert (r)ock, (p)aper, (s)cissors: "  #how to test this string?
    @user_pick = gets.chomp
  end

end

# Game.new.user_setup