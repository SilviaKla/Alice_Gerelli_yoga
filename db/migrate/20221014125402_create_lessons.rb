class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.text :description
      t.string :name
      t.boolean :online
      t.string :address
      t.float :price
      t.string :level

      t.timestamps
    end
  end
end
