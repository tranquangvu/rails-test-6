class Child < Person
  def say_something
    "Hello, I am your #{gender == 'male' ? 'son' : 'daughter'}."
  end
end
