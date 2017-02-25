class AddStartTimeAndMph < ActiveRecord::Migration[5.0]
  def change
   add_column :teams, :start_time, :string
   add_column :riders, :ytd_mph, :decimal, precision: 5, scale: 1
  end
end
