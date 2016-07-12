class Cell

  def initialize(coords, board)
    @coord ||= coords
    @x = @coords[1]
    @y = @coords[0]
    @board ||= board
    determine_state

  end

  def determine_state
  end

  def neighboars_array
    @neighbors = []

  end

  def neighbors_positions
    neighbors_relations = [
      [ @x,    (@y+1)],
      [(@x+1), (@y+1)],
      [(@x+1),  @y],
      [(@x+1), (@y-1)],
      [ @x,    (@y-1)],
      [(@x-1), (@y-1)],
      [(@x-1),  @y],
      [(@x-1), (@y+1)]
    ]
      @board.get_cell_at_xy(neighbors_relations)
  end



end


class Board
  def initialize
    @board Array.new(10) { Array.new(10) }
  end

  def at_coord(x, y)
    @board[x-1][y-1]
  end

  # [ [5, 6], [5, 7] ]
  def get_cell_at_xy(input_array)
    input_array.map do |coord|
      x = coord[0]
      y = coord[1]
      at_coord(x, y)
    end
  end
end
