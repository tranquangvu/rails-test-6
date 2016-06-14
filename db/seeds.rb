# parents
john_fwz = Person.create(name: 'John Fwz', age: 50, gender: 'male', has_children: true)
lily_fwz = Person.create(name: 'Lily Fwz', age: 40, gender: 'female', has_children: true)

# son
william_fwz = Person.create(name: 'William', age: 20, gender: 'male', father_id: john_fwz.id, mother_id: lily_fwz.id)
michael_fwz = Person.create(name: 'Michael Fwz', age: 12, gender: 'male', father_id: john_fwz.id, mother_id: lily_fwz.id)

# daughter
ava_fwz = Person.create(name: 'Ava Fwz', age: 16, gender: 'female', father_id: john_fwz.id, mother_id: lily_fwz.id)
mia_fwz = Person.create(name: 'Mia Fwz', age: 8, gender: 'female', father_id: john_fwz.id, mother_id: lily_fwz.id)
