class CreateChallengeMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :challenge_members do |t|
      t.references :challenge, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :rankings
      t.boolean :approved, default: false

      t.timestamps
    end

    add_index :challenge_members, [:challenge_id, :user_id], unique: true
  end
end
