 class Board
    public
    attr_accessor :board
    def initialize
      @board = (1..9).to_a 
    end
    def displayboard
        puts '+---+---+---+'
        puts '| 1 | 2 | 3 |'
        puts '+---+---+---+'
        puts '| 4 | 5 | 6 |'
        puts '+---+---+---+'
        puts '| 7 | 8 | 9 |'
        puts '+---+---+---+'
    end
    def valid_move
      input.between?(1, 9) && !position_taken?(input)
    end
    
    def game_on?
      num_turn < 9 && !win? ? true : false
    end

    def draw?
     !win && num_turn == 9
    end

   def game_over?
   end


  WIN_COMBINATION_TEMP = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]].freeze

  def win?
    win_combination = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  end

  win_combination.each do |arr|
    win_arr1 = []
    win_arr2 = []
    arr.each do |x|
      player1.selections&.each do |option|
        win_arr1.push(x) if x == option
      end
      next if player2.selections.nil?

      player2.selections.each do |option|
        win_array2.push(x) if ix== option
      end
    end
    return true if win_arr1.length == 3 || win_arr2.length == 3
  end
  false
end
end



 