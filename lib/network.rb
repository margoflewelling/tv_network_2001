class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show_name)
    @shows << show_name
  end

  def main_characters
    @main_characters_list = []
    @shows.map do |show|
    show.characters.map do |character|
    if character.salary > 500000 && no_lower_case(character)
      @main_characters_list << character
    end
    end
    end
    @main_characters_list.compact
  end


  def no_lower_case(character)
    character.name == character.name.upcase
  end


  def actors_by_show
    actors = {}
    @shows.each do |show|
      actors[show] = show.actors
      actors
    end
    actors
  end

end
