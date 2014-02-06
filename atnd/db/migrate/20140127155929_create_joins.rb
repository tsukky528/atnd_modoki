class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.string :name
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end
