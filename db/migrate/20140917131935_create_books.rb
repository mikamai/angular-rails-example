class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string     :isbn,   null: false
      t.string     :author, null: false
      t.string     :title,  null: false
      t.integer    :price,  null: false
      t.timestamps null: false
    end
  end
end
