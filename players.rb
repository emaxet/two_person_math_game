require './math_game'

class Player

  @@turn = 0

  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def self.welcome_players(players)

    players.each do |player|
      puts "Welcome #{player.name}, are you ready to play? (y/N)"
      if gets.chomp == "N"
        puts "Too bad."
      else
        puts "Great!"
      end
    end
  end

  def self.player_question_logic(players, question_string, new_question)
    puts "#{players[@@turn].name}: What is #{question_string}?"
    if gets.chomp.to_i == new_question
      players[@@turn].correct_answer(players)
    else
      players[@@turn].incorrect_answer(players)
    end
  end

  def correct_answer(players)
    puts "#{name}: Great Job! That's correct."
    puts "#{players[0].name}: #{players[0].lives}/3"
    puts "#{players[1].name}: #{players[1].lives}/3"
    @@turn == 0 ? @@turn = 1 : @@turn = 0
  end

  def incorrect_answer(players)
    updated_lives = self.lives -= 1
    puts "#{name}: Seriously? That's wrong!"
    puts "#{players[0].name}: #{players[0].lives}/3"
    puts "#{players[1].name}: #{players[1].lives}/3"
    @@turn == 0 ? @@turn = 1 : @@turn = 0
  end

  def self.winning_player(players)
    puts "Congratulations #{players[@@turn].name}! You won!"
  end

end
