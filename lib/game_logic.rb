# rubocop: disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity,  Metrics/AbcSize

# Description/Explanation of class board
class Board
  #:nodoc:
  attr_accessor :board

  def initialize
    @board = (1..9).to_a
  end

  def displayboard
    puts '+---+---+---+'
    puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
    puts '+---+---+---+'
    puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
    puts '+---+---+---+'
    puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
    puts '+---+---+---+'
  end

  def checkwinner
    return true if board[0] == board[1] && board[1] == board[2]

    return true if board[3] == board[4] && board[4] == board[5]

    return true if board[6] == board[7] && board[7] == board[8]

    return true if board[0] == board[3] && board[3] == board[6]

    return true if board[1] == board[4] && board[4] == board[7]

    return true if board[2] == board[5] && board[5] == board[8]

    return true if board[0] == board[4] && board[4] == board[8]

    return true if board[2] == board[4] && board[4] == board[6]
    
    false
  end

  def playerturn(cell_num, turn)
    loop do
      if cell_num >= 1 && cell_num <= 9 && board[cell_num - 1] == cell_num
        board[cell_num - 1] = if turn.zero?
                                'X'
                              else
                                'O'
                              end
        break
      end
      puts 'invalid move Please enter a valid number from 1 - 9!'
      cell_num = gets.chomp.to_i
    end
  end
end

# rubocop: enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity,  Metrics/AbcSize, Lint/DuplicateBranch
