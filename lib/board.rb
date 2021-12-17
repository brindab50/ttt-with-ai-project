class Board 

    attr_accessor :cells   # attr_accessor is a shortcut method when you need both attr_reader and attr_writer. 

    def initalize 
        reset!             # method can reset the state of the cells to what a board should look like at the start of a game,
    end 

    def reset 
        @cells = Array.new(9, " ")  # an array with 9 " " elements.
    end 

    def display   # A board can print its current state with the #display method.

        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "

    end 

    def update(input, player) #method that represents updating the board when a player makes a move.
        cells[input.to_i-1] = player.token
    end 

    def position # takes in users input in the form of 1-9 
        cells[input.to_i-1]
    end 


    def full?
        cells.all? {|token| token == "X" || token == "O"}
    end

    def turn_count
        cells.count{|token| token == "X" ||token == "O"}
    end 

    def valid_move?(input)
        input.to_i.between?(1,9) &&

    end 
end 
