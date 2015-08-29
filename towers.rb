class TowerOfHanoi

  #initialize initial stack height
  def initialize(num_disks)
    @disk = num_disks
  end

  def play
    #Prints intro
    puts
    puts "Welcome to Tower of Hanoi!"
    puts
    puts "Instructions:"
    puts "Enter where you'd like to move from and to"
    puts "in the format [1,3]. Type 'quit' to end."
    puts

    #initialize board as 2D array
    board = Array.new(3) { Array.new(@disk, 0) }
    #Fill left column with disk numbers
    (1..@disk).each do |x|
      board[x-1][0] = x
    end

=begin
    until win?(board)
      #print current state
      render(board)

    end
=end
  end

  #checks for win condition
  def win?(state)
    #initialize win 2D array state
    win_board = Array.new(3) { Array.new(@disk, 0) }
    #Fill right column with disk numbers
    (1..@disk).each do |x|
      win_board[x-1][2] = x
    end

    return state == win_board
  end

  #checks for valid user inputs
  def valid_input?(user_input)
    #use REGEX to check for proper inputs
    proper_input = /\[[123],[123]\]/
    if proper_input.match(user_input.to_s)
      return true
    else
      return false
    end
  end

  #prints board state
  def render(state)
    puts "Current Board:"
    puts
    #prints board
    state.each do |row|
      row.each do |col|
        disk_print = "o" * col
        print disk_print.ljust(@disk + 2, " ")
      end
      puts
    end
    puts
    #prints tower numbers
    state.each_with_index do |value, index|
      print index.to_s.ljust(@disk + 2, " ")
    end
    puts
    puts

  end


end

#Run the game for test purposes
t = TowerOfHanoi.new(3)
t.play