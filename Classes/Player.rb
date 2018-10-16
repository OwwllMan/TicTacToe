class Player


attr_accessor :player_name, :player_team
    attr_writer  :player_points
 
   
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    def initialize(player_name, player_team)

    	@player_name = gets.chomp
    	@player_team = ""

    end
  
end
