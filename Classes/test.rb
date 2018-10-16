  def get_player_choice(choice, pmark, player)                                      # On recoit la volonté de jeu du player appelé, sa marque et son nom et on appelle la fonction de changement de valeur d'une case
    self.set_case_value(choice, pmark, player)
  end

  def set_case_value(choice, pmark, player)                                         # On change la valeur de la case choisie par la marque du joueur, en ajoutant de la couleur
    if is_playable?(@cases[choice-1])
      if pmark == "O"
        @cases[choice-1].value = pmark.red
      else
        @cases[choice-1].value = pmark.green
      end
    else
      puts "Taken ! Please try again !"                                             # Appelle la fonction qui check si la case a déjà été modifiée
      choice = (gets.chomp).to_i
      self.set_case_value(choice, pmark, player)
    end
  end





def get_player_choice(choice, current_player.player_team, current_player)
  self.set_case_value(choice, current_player.player_team, current_player)
end
    def set_case_value(choice, current_player.player_team, current_player)
      if cell_playable?(player_choice)
        if team == "X"
                      cell[player_choice].value = "X"
                    else
                      cell[player_choice].value = "O"
                    end
      else
        puts "taken, takeanother"
        choice = (gets.chomp).to_i
        self.set_case_value(choice, current_player.player_team, current_player)
      end
    end



  def go
    # TO DO : lance la partie
    @board_game.victory? == false
    puts @board_game.victory?
    puts "Let's go !"
    puts "It's #{@current_player.player_name} turn!" 
    @board_game.victory?
    puts @board_game.victory?
    if @board_game.victory? == true
      puts "there is a winner"
    else
      count = 0
        while count < 9
          if count == 8
            puts @board_game.victory?
            binding.pry
          end
          turn
          count += 1
          
        end                                                                         # Win du player 1, break de la loop si besoin et affiche la board finie
      end
  end


    def go
    # TO DO : lance la partie
      puts "Let's go!"
      puts "It's #{@current_player.player_name} turn!" 
      count = 0
      while @board_game.victory != true
        for count in 1..9
          turn
          count +=1
          puts @board_game.victory?
        end
      else
            "Winner!"
      end



    end












def play(choice, team)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
        def cell_playable?(player_choice)                                                            # Regarde si la cell est deja modifiée
                  if cells[player_choice].value == "Y" || cells[player_choice].value == "O"
                    return false
                    else
                    return true
                  end
        end


        if cell_playable == true 
                    if team == "X"
                      cell[player_choice].value = "X"
                    else
                      cell[player_choice].value = "O"
                    end
        else
          "The value of this cell is alrady #{cell[choice].value}"
        end
  end

  