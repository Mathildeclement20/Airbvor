class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :specie
      t.string :image_url
      t.string :name
      t.text :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end
