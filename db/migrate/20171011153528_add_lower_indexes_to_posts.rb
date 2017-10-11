class AddLowerIndexesToPosts < ActiveRecord::Migration[5.1]
  def change
    add_index :posts, "lower(title) varchar_pattern_ops"
  end
end
