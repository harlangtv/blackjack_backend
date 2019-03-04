class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :hands_played
      t.integer :hands_won
      t.integer :hands_lost
      t.integer :hands_drawn

      t.timestamps
    end
  end
end
