class AddIframeToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :element, :string
  end
end
