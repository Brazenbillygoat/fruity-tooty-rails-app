require 'faker'

Ingredient.destroy_all
Smoothie.destroy_all
SmoothieIngredient.destroy_all



10.times{ Smoothie.create(name: Faker::TvShows::Buffy.character)}
10.times{ Ingredient.create(name: Faker::Food.fruits)}

smoothie_ids = Smoothie.all.map{ |smoothie| smoothie.id }
ingredient_ids = Ingredient.all.map{ |ingredient| ingredient.id }

10.times{ SmoothieIngredient.create(smoothie_id: smoothie_ids.sample, ingredient_id: ingredient_ids.sample)}

