class CreateCompchallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :compchallenges do |t|
      t.integer :challenge_id
      t.integer :competition_id

      t.timestamps
    end
  end
end
