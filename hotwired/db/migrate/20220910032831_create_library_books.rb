class CreateLibraryBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :library_books do |t|
      t.string :title
      t.string :status
      t.string :description
      t.datetime :status_dat
      t.text :internal_info

      t.timestamps
    end
  end
end
