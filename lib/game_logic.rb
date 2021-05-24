

# Description/Explanation of class board
class Board
  #:nodoc:
  attr_accessor :board

  def initialize
    @board = (1..9).to_a
  end

  def display_board
    " 1 | 2 | 3 \n" \
    "------------\n" \
    " 4 | 5 | 6 \n" \
    "------------\n" \
    " 7 | 8 | 9 \n"
  end

  def checkwinner
    win_combo = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    win_combo.any? do |indexes|
      [%w[X X X], %w[O O O]].include?(indexes.map { |i| board[i] })
    end
  end

  def playerturn(cell_num, turn)
    if cell_num >= 1 && cell_num <= 9 && board[cell_num - 1] == cell_num
      board[cell_num - 1] = if turn <= 0
                              'X'
                            else
                              'O'
                            end
      return false
    end
    true
  end
end
