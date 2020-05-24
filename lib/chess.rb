class Board
  attr_accessor :win, :board, :player1, :player2
  
  def initialize
    @win = false
    @board = create_board
    @obj_board = create_board
    @player1 = Player.new("Player 1", "white")
    @player2 = Player.new("Player 2", "black")
  end

  def gameplay
    setup_game
    take_turns
  end

  def take_turns
    players_arr = [@player1, @player2]
    until @win == true do
      players_arr.each do |player|
        make_legal_move(player)
        return if @win == true
      end
    end
  end

  def make_legal_move(player)
    puts legal_selection(player)
  end

  def legal_selection(player)
    legal_selection = false
    puts "#{player.name}'s turn'"
    until legal_selection == true
      print "Piece to move: "
      selection = gets.chomp
      selection = selection.to_s.split('').map(&:to_i)
      object = @obj_board[selection[0]][selection[1]]
      if object.player == player.color
        legal_selection = true
        puts "Selection: #{player.name}'s #{object.type} on #{selection}"
        return selection
      else  
        puts "Not a legal selection."
      end
    end
  end

  def setup_game
    create_pieces
    set_initial_locations
    display_board
  end

  def create_board
    board = Array.new(8) { Array.new(8) }
    8.times do |idx|
      8.times do |value|
        board[idx][value] = "-"
      end
    end
    board
  end

  def display_board
    8.times do |num|
      puts @board[num].join
    end
  end

  def create_pieces
    @white_king = King.new("king", "white", "\u2654", [7,3])
    @white_queen = Queen.new("queen", "white", "\u2655", [7,4])
    @white_rook1 = Rook.new("rook", "white", "\u2656", [7,0])
    @white_rook2 = Rook.new("rook", "white", "\u2656", [7,7])
    @white_bishop1 = Bishop.new("bishop", "white", "\u2657", [7,2])
    @white_bishop2 = Bishop.new("bishop", "white", "\u2657", [7,5])
    @white_knight1 = Knight.new("knight", "white", "\u2658", [7,1])
    @white_knight2 = Knight.new("knight", "white", "\u2658", [7,6])
    @white_pawn1 = Pawn.new("pawn", "white", "\u2659", [6,0])
    @white_pawn2 = Pawn.new("pawn", "white", "\u2659", [6,1])
    @white_pawn3 = Pawn.new("pawn", "white", "\u2659", [6,2])
    @white_pawn4 = Pawn.new("pawn", "white", "\u2659", [6,3])
    @white_pawn5 = Pawn.new("pawn", "white", "\u2659", [6,4])
    @white_pawn6 = Pawn.new("pawn", "white", "\u2659", [6,5])
    @white_pawn7 = Pawn.new("pawn", "white", "\u2659", [6,6])
    @white_pawn8 = Pawn.new("pawn", "white", "\u2659", [6,7])

    @black_king = King.new("king", "black", "\u265A", [0,3])
    @black_queen = Queen.new("queen", "black", "\u265B", [0,4])
    @black_rook1 = Rook.new("rook", "black", "\u265C", [0,0])
    @black_rook2 = Rook.new("rook", "black", "\u265C", [0,7])
    @black_bishop1 = Bishop.new("bishop", "black", "\u265D", [0,2])
    @black_bishop2 = Bishop.new("bishop", "black", "\u265D", [0,5])
    @black_knight1 = Knight.new("knight", "black", "\u265E", [0,1])
    @black_knight2 = Knight.new("knight", "black", "\u265E", [0,6])
    @black_pawn1 = Pawn.new("pawn", "black", "\u265F", [1,0])
    @black_pawn2 = Pawn.new("pawn", "black", "\u265F", [1,1])
    @black_pawn3 = Pawn.new("pawn", "black", "\u265F", [1,2])
    @black_pawn4 = Pawn.new("pawn", "black", "\u265F", [1,3])
    @black_pawn5 = Pawn.new("pawn", "black", "\u265F", [1,4])
    @black_pawn6 = Pawn.new("pawn", "black", "\u265F", [1,5])
    @black_pawn7 = Pawn.new("pawn", "black", "\u265F", [1,6])
    @black_pawn8 = Pawn.new("pawn", "black", "\u265F", [1,7])
    
    @pieces_arr = [@white_king, @white_queen, @white_rook1, @white_rook2, @white_bishop1, @white_bishop2, @white_knight1,
                  @white_knight2, @white_pawn1, @white_pawn2, @white_pawn3, @white_pawn4, @white_pawn5, @white_pawn6,
                  @white_pawn7, @white_pawn8,
                  @black_king, @black_queen, @black_rook1, @black_rook2, @black_bishop1, @black_bishop2, @black_knight1,
                  @black_knight2, @black_pawn1, @black_pawn2, @black_pawn3, @black_pawn4, @black_pawn5, @black_pawn6,
                  @black_pawn7, @black_pawn8]

  end

  def set_initial_locations
    @pieces_arr.each do |obj|
      @board[obj.location[0]][obj.location[1]] = obj.image
      @obj_board[obj.location[0]][obj.location[1]] = obj
    end
  end

end

class Piece 
  attr_accessor :type, :player, :image, :location

  def initialize(type, player, image, location)
    @type = type
    @player = player
    @image = image
    @location = location
  end

end

class King < Piece
  def initialize(type, player, image, location)
    super
  end
end

class Queen < Piece
  def initialize(type, player, image, location)
    super
  end
end

class Rook < Piece
  def initialize(type, player, image, location)
    super
  end
end

class Bishop < Piece
  def initialize(type, player, image, location)
    super
  end
end

class Knight < Piece
  def initialize(type, player, image, location)
    super
  end
end

class Pawn < Piece
  def initialize(type, player, image, location)
    super
  end
end

class Player 
  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end


board = Board.new
board.gameplay
