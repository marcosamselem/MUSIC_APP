class AddColumnImage < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :image_url, :string
  end
end
