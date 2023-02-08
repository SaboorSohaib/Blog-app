class RenameColumnNamePosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :author_id, :users_id
  end
end
