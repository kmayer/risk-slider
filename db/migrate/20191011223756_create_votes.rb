class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :exercise
      t.string :token
      t.integer :defect_free
      t.integer :great_ux
      t.integer :visually_stunning
      t.integer :lots_of_features
      t.integer :finish_fast
      t.timestamps
    end

    add_index :votes, :token, unique: true

  end
end
