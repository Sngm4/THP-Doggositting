class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :pet_name

      t.timestamps
    end
  end
end
