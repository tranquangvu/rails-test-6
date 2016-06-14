class Person < ActiveRecord::Base
  belongs_to  :father, class_name: 'Male'
  belongs_to  :mother, class_name: 'Female'

  validates :age, numericality: { only_integer: true }
  validates :age, numericality: { greater_than: 0 },  unless: :has_children?
  validates :age, numericality: { greater_than: 20 }, if: :male_has_children?
  validates :age, numericality: { greater_than: 18 }, if: :female_has_children?

  def first_name
    name.split(' ').first
  end

  def parents
    [father, mother]
  end

  def children
    gender == 'male' ? Male.find(id).children : Female.find(id).children
  end

  def say_something
    "Hello, my name is #{name}."
  end

  def sons
    children.where(gender: 'male')
  end

  def daughters
    children.where(gender: 'female')
  end

  def brothers
    father.sons.where.not(id: id) if father
  end

  def father_of?(other)
    children.collect(&:id).include? other.id
  end

  def older_than(other)
    age - other.age
  end

  private

  def male_has_children?
    gender == 'male' && has_children? == true
  end

  def female_has_children?
    gender == 'female' && has_children? == true
  end
end
