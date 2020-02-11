class Show
attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    add_salaries = @characters.sum {|character| character.salary}
  end

  def highest_paid_actor
    (@characters.max_by {|character| character.salary}).actor
  end

  def actors
    actors_names = @characters.map {|character| character.actor}  
  end

end
