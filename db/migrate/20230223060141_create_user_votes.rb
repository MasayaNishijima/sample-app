class CreateUserVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vote, null: false, foreign_key: true
      t.references :choice, null: false, foreign_key: true

      t.timestamps
    end

    add_index :user_votes, [:user_id, :vote_id], unique: true
  end
end
