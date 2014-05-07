class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :team, index: true
      t.references :group, index: true
      t.integer :total_points
      t.integer :total_games
      t.integer :total_wins
      t.integer :total_losses
      t.integer :total_draws
      t.integer :goalbuncs_scored
      t.integer :goals_against

      t.timestamps
    end
  end
end
