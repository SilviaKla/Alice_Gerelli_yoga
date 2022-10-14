class AddWhenToLesson < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :when, :string, null: false
  end
end
