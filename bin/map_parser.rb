class MapParser
  def initialize(map)
    @map = map.split("\n")
  end

  def coordinates
    remove_non_map_characters
    x = nil
    y = nil
    @map.each_with_index do |line, index|
      if @map[index].include?("X")
        x = index
      end
      line.split('').each_with_index do |y_coordinate, index|
        if y_coordinate == "X"
          y = index
        end
      end
    end
    [x,y]
  end

  def remove_non_map_characters
    @map.shift
    @map.pop
    @map.map do |line|
      line[0] = ''
      line[-1] = ''
      line
    end
  end
end
