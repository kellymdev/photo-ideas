# Categories
nature = Category.create(name: 'Nature')
objects = Category.create(name: 'Objects')
shapes = Category.create(name: 'Shapes')

# Subjects
nature.subjects.create([
  { name: 'Bark' },
  { name: 'Dandelion' },
  { name: 'Dew' },
  { name: 'Flower' },
  { name: 'Fruit' },
  { name: 'Grass' },
  { name: 'Ice' },
  { name: 'Insect' },
  { name: 'Leaf' },
  { name: 'Moss' },
  { name: 'Seed' },
  { name: 'Spider' }
])

objects.subjects.create([
  { name: 'Bead' },
  { name: 'Button' },
  { name: 'Candle' },
  { name: 'Dice' },
  { name: 'Fabric' },
  { name: 'Fork' },
  { name: 'Paper clip' },
  { name: 'Peg / Clothespin' },
  { name: 'Pen' },
  { name: 'Pencil' },
  { name: 'Pencil shavings' },
  { name: 'Pin' },
  { name: 'Ribbon' },
  { name: 'Safety pin' },
  { name: 'Sequin' },
  { name: 'Spoon' },
  { name: 'String' },
  { name: 'Water drops' }
])

shapes.subjects.create([
  { name: 'Circle' },
  { name: 'Cube' },
  { name: 'Cylinder' },
  { name: 'Diamond' },
  { name: 'Donut' },
  { name: 'Heart' },
  { name: 'Hexagon' },
  { name: 'Rectangle' },
  { name: 'Spiral' },
  { name: 'Square' },
  { name: 'Star' },
  { name: 'Triangle' }
])
