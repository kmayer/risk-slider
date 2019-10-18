class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :exercise, null: false, foreign_key: true
      t.string :token
      t.jsonb :metric_votes

      t.timestamps
    end
    add_index :votes, :token, unique: true
  end
end
