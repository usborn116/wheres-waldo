# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
maps = Map.create(
    [
      { slug: 'ski-slopes', name: 'SKI SLOPES', difficulty: 1 },
      { slug: 'ye-olde-dodgeball', name: 'YE OLDE DODGEBALL', difficulty: 2 },
      { slug: 'outer-space', name: 'OUTER SPACE', difficulty: 3 },
      { slug: 'fruit-fight', name: 'FRUIT FIGHT', difficulty: 4 },
      { slug: 'great-escape', name: 'THE GREAT ESCAPE', difficulty: 5 },
      { slug: 'siege-of-troy', name: 'SIEGE OF TROY', difficulty: 6 }
    ]
  )
  
  # Character locations
  waldo_coords = [
    [855, 740], [961, 64], [405, 628], [893, 665], [561, 428], [169, 844]
  ]
  wilma_coords = [
    [490, 422], [282, 666], [295, 519], [133, 849], [763, 532], [757, 763]
  ]
  wizard_coords = [
    [70, 758], [295, 416], [779, 577], [251, 500], [675, 294], [288, 135]
  ]
  odlaw_coords = [
    [318, 635], [921, 587], [71, 690], [661, 560], [435, 306], [864, 821]
  ]
  
  # Create characters
  waldo_coords.each_with_index { |c, i| Character.create(slug: 'waldo', x_coord: c[0], y_coord: c[1], map: maps[i]) }
  wilma_coords.each_with_index { |c, i| Character.create(slug: 'wilma', x_coord: c[0], y_coord: c[1], map: maps[i]) }
  wizard_coords.each_with_index { |c, i| Character.create(slug: 'wizard', x_coord: c[0], y_coord: c[1], map: maps[i]) }
  odlaw_coords.each_with_index { |c, i| Character.create(slug: 'odlaw', x_coord: c[0], y_coord: c[1], map: maps[i]) }