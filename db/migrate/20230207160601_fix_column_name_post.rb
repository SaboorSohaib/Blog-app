class FixColumnNamePost < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :posts_id, :PostId
  end
end
