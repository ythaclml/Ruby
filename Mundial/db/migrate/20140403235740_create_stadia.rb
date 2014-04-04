class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :city
      t.date :construct_date
      t.integer :max_cap
      t.string :photo

      t.timestamps
    end
  end
end
