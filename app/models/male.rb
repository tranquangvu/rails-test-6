class Male < Person
  has_many :children, class_name: 'Child', foreign_key: 'father_id'

  def say_something
    "Hello, I am your father."
  end
end
