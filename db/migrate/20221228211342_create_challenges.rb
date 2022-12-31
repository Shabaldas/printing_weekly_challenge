class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :title, null: false
      t.string :description
      t.integer :candidates
      t.integer :max_candidates_size
      t.integer :gift
      t.datetime :duration
      t.integer :status
      t.integer :technology
      t.integer :participation

      t.timestamps
    end
  end
end
