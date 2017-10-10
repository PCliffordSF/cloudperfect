class AddFieldsToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :model_tag, :boolean
    add_column :posts, :view_tag, :boolean
    add_column :posts, :controller_tag, :boolean
  end
end
