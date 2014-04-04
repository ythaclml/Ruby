class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :match_date
      t.integer :stage
      t.integer :status
      t.string :local, :references => "Team"
      t.string :visit, :references => "Team"
      t.string :score
      t.string :loser
      t.string :winner
      t.string :string
      t.boolean :draw
      t.string :group_id
      t.string :stadium_id

      t.timestamps
    end
  end
end
