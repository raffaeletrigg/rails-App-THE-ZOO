class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :habitat
      t.string :diet
      t.string :conservation_status

      t.timestamps
    end
  end
end
