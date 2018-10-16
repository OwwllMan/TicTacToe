class Board

  attr_accessor :cells, :choice

  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe

    cell_1 = BoardCase.new(1, "1")
    cell_2 = BoardCase.new(2, "2")
    cell_3 = BoardCase.new(3, "3")
    cell_4 = BoardCase.new(4, "4")
    cell_5 = BoardCase.new(5, "5")
    cell_6 = BoardCase.new(6, "6")
    cell_7 = BoardCase.new(7, "7")
    cell_8 = BoardCase.new(8, "8")
    cell_9 = BoardCase.new(9, "9")
    @cells = [cell_1, cell_2, cell_3, cell_4, cell_5, cell_6, cell_7, cell_8, cell_9]

  end

  def show
  #TO DO : afficher le plateau

    puts "\n     |     |     "
    puts "  #{cells[0].value}  |  #{cells[1].value}  |  #{cells[2].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cells[3].value}  |  #{cells[4].value}  |  #{cells[5].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cells[6].value}  |  #{cells[7].value}  |  #{cells[8].value}  "
    puts "     |     |     "



  end

  def play(choice, player_team, player)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)      
           player_choice = gets.chomp.to_i
            if player_choice.between?(1..9)
              if cell_playable ?
                if current_player.player_team == "X"
                cell[choice].value = "X"
                else
                cell[choice].value = "O"
                end
              else 
                "This case already been played"
              end
            else
              "Please input a case btween 1..9"
            end


            def cell_playable?(cell)                                                            # Regarde si la cell est deja modifiée
              if cell[player_choice].value == "Y" || cell[player_choice].value == "O"
                return false
                else
                return true
              end
            end
   
                                              # Player_choice = 1..9
                                              # if cell playable ?
                                              #  if current_player.player_team == "X"
                                              #   @cell[choice (between 1..9)].value = "X"
                                              #  else 
                                              #   @cell[choice].value = "O"
                                              #  end
                                              # else
                                              # Choose another cell 
                                              # Repeat method
          

                                              # cell playable ?
                                              # -> cell value different from X / O ?
                                              # -> Cell free
                                              # -> Else -> cell not free
  end
                         

 


    #TO DO : qui gagne ?
  def victory(player)                                                               # Recense toutes les conditions de victoire (8 au total)

    if @cells[0].value == @cells[1].value && @cells[1].value == @cells[2].value
      return true

    elsif @cells[3].value == @cells[4].value && @cells[4].value == @cells[5].value
      return true

    elsif @cells[6].value == @cells[7].value && @cells[7].value == @cells[8].value
      return true

    elsif @cells[0].value == @cells[3].value && @cells[3].value == @cells[6].value
      return true

    elsif @cells[1].value == @cells[4].value && @cells[4].value == @cells[7].value
      return true

    elsif @cells[2].value == @cells[5].value && @cells[5].value == @cells[8].value
      return true

    elsif @cells[2].value == @cells[4].value && @cells[4].value == @cells[6].value
      return true

    elsif @cells[0].value == @cells[4].value && @cells[4].value == @cells[8].value
      return true

    end
  end
end

