class Person
  attr_accessor :name, :age, :id

  def initialize(age, parent_permision: true, name: 'maximilianus')
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permision = parent_permision
  end

  def can_use_services?
    of_age? || @parent_permision
  end

  private

  def of_age?
    @age >= 18
  end
end
