class RenameBookNameColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :book_name, :title
  end
end
