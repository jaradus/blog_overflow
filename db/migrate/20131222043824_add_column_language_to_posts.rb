class AddColumnLanguageToPosts < ActiveRecord::Migration
  def up
    # arguments:  table_name, column_name, data_type
    add_column :posts, :language, :string
  end

  def down
    remove_column :posts, :language, :string
  end
end