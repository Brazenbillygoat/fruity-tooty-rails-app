class CreateSmoothieIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :smoothie_ingredients do |t|
      t.belongs_to :ingredient #t.integer :ingrdient_id
      t.belongs_to :smoothie

      t.timestamps
    end
  end
end
