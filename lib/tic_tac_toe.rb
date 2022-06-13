require "pry"
class TicTacToe

    attr_accessor :board

    WIN_COMBINATIONS = [ 
        [0, 1, 2], #top row
        [3, 4, 5], #middle row
        [6, 7, 8], #bottom row
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]

    ]

    def initialize
        @board = [ " ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    def display_board
         print " #{@board[0]} | #{@board[1]} | #{@board[2]} "
         print "-----------"
         print " #{@board[3]} | #{@board[4]} | #{@board[5]} "
         print "-----------"
         print " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(num)
        num.to_i - 1
    end

    def move(ind, player = "X")
    # input_to_index(ind)
    @board[ind] = player
    end

    def position_taken?(ind)
    # input_to_index(ind)
    if @board[ind] == "X" || @board[ind] == "O"
        true
    else
        false
    end
    end

    def valid_move?(ind)
    if position_taken?(ind) == false && ind >= 0 && ind < 10
        true
    else
    false
    end
    end

    def turn_count
        @board.count("X") + @board.count("O")
    end

    def current_player
        if turn_count.even?
            "X"
        else
            "O"
        end
    end

    def turn
        num = gets.chomp.to_i
        index = input_to_index(num)
        if valid_move?(index)
            move(index, current_player)
            display_board
        else
        "no"
    end
    end
        


    
end