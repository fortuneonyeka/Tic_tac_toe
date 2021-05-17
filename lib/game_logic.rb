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

    WIN_COMBINATION_TEMP = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]].freeze

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
end
 