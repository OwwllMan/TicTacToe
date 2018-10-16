class Game
  
    #TO DO : créé 2 joueurs, créé un board
    
      def initialize
    
            puts "Player 1 will be playing X -> Whats Player 1 name ?"
            # Creer joueur 1
            @player1 = Player.new(@player_name, "X")
            puts "Player 2 will be playing O -> Whats Player 2 name ?"
            # Creer joueur 2
            @player2 = Player.new(@player_name, "O")
            puts "#{@player1.player_name} will play X"
            puts "#{@player2.player_name} will play O"
            
            @board_game = Board.new
            @current_player = @player1
            @player1.player_team = "X"
            @player2.player_team = "O"
     end
    
    
 

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end

end
