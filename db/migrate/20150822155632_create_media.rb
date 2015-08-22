class CreateMedia < ActiveRecord::Migration
  def up
    create_table :media
    add_column :media, :title, :string
    add_attachment :media, :image
  end

  def down
    remove_attachment :media, :image
    remove_column :media, :title, :string
    drop_table :media
  end

end
