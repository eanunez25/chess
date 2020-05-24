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

  end

end

class Piece 

  def initialize(type, player, image)
    @type = type
    @player = player
    @image = image
  end

end

board = Board.new
board.display_board
