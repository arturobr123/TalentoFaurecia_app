class CreateRankCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :rank_candidates do |t|
    	t.text :rank
    	t.timestamps
    end
  end
end
