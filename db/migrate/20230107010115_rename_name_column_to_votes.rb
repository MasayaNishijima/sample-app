class RenameNameColumnToVotes < ActiveRecord::Migration[6.1]
  def change
    rename_column :votes, :name, :title
  end
end
