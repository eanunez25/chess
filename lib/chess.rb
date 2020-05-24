class Board
  
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
    8.times do |num|
      puts board[num].join
    end
  end

end

board = Board.new
