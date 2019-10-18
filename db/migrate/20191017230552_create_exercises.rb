class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :token
      t.jsonb :metrics

      t.timestamps
    end

    add_index :exercises, :token, unique: true
  end
end
