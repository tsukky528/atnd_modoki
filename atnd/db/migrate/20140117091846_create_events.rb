class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :place
      t.string :date

      t.timestamps
    end
  end
end
