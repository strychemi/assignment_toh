class TowerOfHanoi

  #initialize initial stack height
  def initialize(num_disks)
    @disk = num_disks
  end

  def play
    #Prints intro
    puts "Welcome to Tower of Hanoi!"
    puts "Instructions:"
    puts "Enter where you'd like to move from and to"
    puts "in the format [1,3]. Type 'quit' to end."

    #initialize board as 2D array
    board = Array.new(3) { Array.new(@disk, 0) }
    board[0].each_with_index do |value, index|
      board[0][index] = @disk - index
    end

    render(board)

  end

  #checks for win condition
  def win?
    true
  end

  #checks for valid user inputs
  def valid_input?
  end

  #prints board state
  def render(state)
    state.each do |tower|
      print tower.inspect
      puts
    end

  end


end

t = TowerOfHanoi.new(3)
t.play