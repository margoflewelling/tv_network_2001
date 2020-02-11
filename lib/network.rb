class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show_name)
    @shows << show_name
  end


  def all_characters
    all_char = []
    @shows.each do |show|
    all_char << show.characters
    end
    all_char.flatten
  end

  def main_characters
    all_characters.find_all {|character| character.salary > 500000 && no_lower_case(character)}
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

  # def shows_by_actor
  #   reduce ({}) do |shows_by_actor, actor|
  #   if shows_by_actor.has_key?(actor)
  #     shows_by_actor[actor] << actor
  #   else
  #     shows_by_actor[actor] = show

end
