class Student
  attr_reader :id
  attr_accessor :first_name, :second_name, :house_id, :age

  def initialize(first_name, second_name, house_id, age)
    @id = id
    @first_name = first_name
    @second_name = second_name
    @house_id = house_id
    @age = age
  end

def save
  sql = "INSERT INTO students (first_name, second_name, house_id, age)
  VALUES ($1, $2, $3, $4)
  RETURNING id;"
  values = [@first_name, @second_name, @house_id, @age]
  @id = SqlRunner(sql, values).first["id"].to_i
end


end
