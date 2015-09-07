class DescriptionAndFilenameRequired < ActiveRecord::Migration
  def up
    change_column :articles, :description, :string, null: false
    change_column :articles, :filename, :string, null: false
    change_column :articles, :user_id, :int, null: false
  end

  def down
    change_column :articles, :description, :string, null: true
    change_column :articles, :filename, :string, null: true
    change_column :articles, :user_id, :int, null: true
  end
end
