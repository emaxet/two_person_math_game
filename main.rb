  require './players'
  require './questions'

  player1 = Player.new("Player 1", 3)
  player2 = Player.new("Player 2", 3)

  players = [player1, player2]

  Player.welcome_players(players)

  until players[0].lives == 0 || players[1].lives == 0

    question = Question.new

    new_question = question.generate_question

    question_string = question.read_question

    Player.player_question_logic(players, question_string, new_question)

  end

  Player.winning_player(players)

