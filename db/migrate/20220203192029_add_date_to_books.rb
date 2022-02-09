class AddDateToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :published_date, :string
    add_column :books, :date, :string
  end
end
