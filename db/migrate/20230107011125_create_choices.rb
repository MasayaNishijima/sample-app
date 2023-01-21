class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :name
      t.integer :count, default: 0
      t.references :vote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
