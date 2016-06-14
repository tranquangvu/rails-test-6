class Female < Person
  has_many :children, class_name: 'Child', foreign_key: 'mother_id'

  def say_something
    "Hello, I am your mother."
  end
end
