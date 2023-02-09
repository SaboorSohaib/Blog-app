class RenameColumnNameComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :author_id, :users_id
  end
end
