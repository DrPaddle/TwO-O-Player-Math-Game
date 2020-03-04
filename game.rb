require './players'
require './questions'

  # Instance Variables of the two players
    player1 = Player.new("Player1")
    player2 = Player.new("Player2")
    current_player = "Player1"
    gameover = false

    # looping game main functionality
    while (gameover == false) 

      # getting question instance, current player is a string name
      question = Question.new(current_player)

      #points is = to our question and checking it
      points = question.question_answer

      # checking if current play string = player1.name method = string
      if current_player == player1.name
        #grab the lives method to return a number then subtract or adds depending on win or loss
        player1.lives += points
        #set current player to player2
        current_player = "Player2"
      else
        player2.lives += points
        current_player = "Player1"
      end

      if (player1.lives == 0 or player2.lives == 0)
        gameover = true
      end


      if gameover == true
        puts "---------Game Over---------"
        if player1.lives > player2.lives
          puts "Player 1 wins with a score of #{player1.lives}/3"
        elsif player1.lives < player2.lives
          puts "Player 2 wins with a score of #{player2.lives}/3"
        else 
          puts "It's a draw"
        end
        puts " Game over"
      else 
        puts '-------------------------------------------'
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        puts '--------------------------------------------'
        puts " New Turn "
        
      end
    end








