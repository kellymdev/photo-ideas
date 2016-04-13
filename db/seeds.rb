# Categories
landscape = Category.create(name: 'Landscape')
macro = Category.create(name: 'Macro')
urban = Category.create(name: 'Urban')
wildlife = Category.create(name: 'Wildlife')

# Subcategories
nature = macro.subcategories.create(name: 'Nature')
objects = macro.subcategories.create(name: 'Objects')
shapes = macro.subcategories.create(name: 'Shapes')

birds = wildlife.subcategories.create(name: 'Birds')
mammals = wildlife.subcategories.create(name: 'Mammals')
reptiles = wildlife.subcategories.create(name: 'Reptiles')

# Subjects
nature.subjects.create([
  { name: 'Dew' },
  { name: 'Flower' },
  { name: 'Grass' },
  { name: 'Ice' },
  { name: 'Insect' },
  { name: 'Leaf' },
  { name: 'Moss' },
  { name: 'Spider' },
])

objects.subjects.create([
  { name: 'Fabric' },
  { name: 'Fork' },
  { name: 'Paper clip' },
  { name: 'Pen' },
  { name: 'Pencil' },
  { name: 'Pin' },
  { name: 'Sequin' },
  { name: 'Spoon' },
  { name: 'String' },
  { name: 'Water drops' }
])

shapes.subjects.create([
  { name: 'Circle' },
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
