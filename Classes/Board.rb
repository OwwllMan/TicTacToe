class Board


  
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases

    attr_accessor :cells, :choice


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    cell_0 = BoardCase.new(0, "nil")
    cell_1 = BoardCase.new(1, "1")
    cell_2 = BoardCase.new(2, "2")
    cell_3 = BoardCase.new(3, "3")
    cell_4 = BoardCase.new(4, "4")
    cell_5 = BoardCase.new(5, "5")
    cell_6 = BoardCase.new(6, "6")
    cell_7 = BoardCase.new(7, "7")
    cell_8 = BoardCase.new(8, "8")
    cell_9 = BoardCase.new(9, "9")
    cell_10 = cell_9
    @cells = [cell_0, cell_1, cell_2, cell_3, cell_4, cell_5, cell_6, cell_7, cell_8, cell_9, cell_10]



  end

  def show
  #TO DO : afficher le plateau

  
    puts "\n     |     |     "
    puts "  #{cells[1].value}  |  #{cells[2].value}  |  #{cells[3].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cells[4].value}  |  #{cells[5].value}  |  #{cells[6].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cells[7].value}  |  #{cells[8].value}  |  #{cells[9].value}  "
    puts "     |     |     "


  end

  def play(choice, team, current_player)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
        
        @choice = choice.to_i

        def cell_playable?(choice)                                                            # Regarde si la cell est deja modifiée
                  if cells[choice].value == "X" || cells[choice].value == "O"
                    return false
                    else
                    return true
                  end
        end

            def set_case_value(choice, team, current_player)
      if cell_playable?(choice)
       # if current_player = @player1
                      @cells[choice].value = team
                  #  else
                  #    cells[choice-1].value = team
                  #  end
      else
        puts "taken, takeanother"
        choice = (gets.chomp).to_i
        self.set_case_value(choice, team, current_player)
      end
    end

          def get_player_choice(choice, team, current_player)
  self.set_case_value(choice, team, current_player)
end




  end

  def victory?

    if cells[1].value == cells[2].value && cells[2].value == cells[3].value
        cells[1].value = cells[1].value.green
          cells[2].value = cells[2].value.green
            cells[3].value = cells[3].value.green
      return true 

    elsif cells[4].value == cells[5].value && cells[5].value == cells[6].value
        cells[4].value = cells[4].value.green
          cells[5].value = cells[5].value.green
            cells[6].value = cells[6].value.green
      return true

    elsif cells[7].value == cells[8].value && cells[8].value == cells[9].value 
        cells[7].value = cells[7].value.green
          cells[8].value = cells[8].value.green
            cells[9].value = cells[9].value.green
      return true

    elsif cells[1].value == cells[4].value && cells[4].value == cells[7].value
        cells[1].value = cells[1].value.green
          cells[4].value = cells[4].value.green
            cells[7].value = cells[7].value.green
      return true

    elsif cells[2].value == cells[5].value && cells[5].value == cells[8].value
        cells[2].value = cells[2].value.green
          cells[5].value = cells[5].value.green
            cells[8].value = cells[8].value.green
      return true

    elsif cells[3].value == cells[6].value && cells[6].value == cells[9].value
        cells[3].value = cells[3].value.green
          cells[6].value = cells[6].value.green
            cells[9].value = cells[9].value.green
      return true

    elsif cells[3].value == cells[5].value && cells[5].value == cells[7].value
        cells[2].value = cells[2].value.green
          cells[4].value = cells[4].value.green 
            cells[6].value = cells[6].value.green
      return true

    elsif cells[1].value == cells[5].value && cells[5].value == cells[9].value
        cells[1].value = cells[1].value.green
          cells[5].value = cells[5].value.green
            cells[9].value = cells[9].value.green
      return true

    end
  end

end