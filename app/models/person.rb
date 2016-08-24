class Person
  attr_accessor :name, :last_name

  def initialize(name:, last_name:)
    self.name = name
    self.last_name = last_name
    validate!
  end

  def to_s
    "#{name} #{last_name}"
  end

  def full_name
    [name, last_name]
  end

  def full_name_inverse
    [last_name, name]
  end

  private

  def validate!
    raise ArgumentError.new('Name is nil!') if name.nil?
    raise ArgumentError.new('Last name is nil!') if last_name.nil?
  end
end