class Board
      private
    @@board
    public
    def initialize
      @@board = Array.new(3) { Array.new(3) { 0 } }
    end
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
  draw? || win? || num_turn == 9?
end