class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :bookcase_id
      t.integer :row
      t.integer :position
      t.boolean :status, default: true
      t.integer :section
      t.string :orientation

      t.timestamps null: false
    end
  end
end
