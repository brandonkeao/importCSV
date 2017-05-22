class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :csv_id
      t.string :location
      t.integer :place
      t.string :boat
      t.integer :points
      t.string :race
      t.string :race_results_id
      t.integer :race_id

      t.timestamps
    end
  end
end
