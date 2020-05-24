class Board
  attr_accessor :win, :board
  
  def initialize
    @win = false
    @board = create_board
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


board = Board.new
board.create_pieces
board.display_board

