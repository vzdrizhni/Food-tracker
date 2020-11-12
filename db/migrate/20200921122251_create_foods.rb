class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :title
      t.string :calories
      t.string :grams
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
