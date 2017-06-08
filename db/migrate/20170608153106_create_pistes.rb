class CreatePistes < ActiveRecord::Migration[5.0]
  def change
    create_table :pistes do |t|
      t.integer :piste_id
      t.string :name
      t.text :description
      t.integer :ski_difficulty
      t.jsonb :geo_data
    end

    add_index :pistes, :name
    add_index :pistes, :piste_id
  end
end
