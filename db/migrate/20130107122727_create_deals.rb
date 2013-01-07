class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.integer :id
      t.string :instrument_id
      t.string :per
      t.date :date
      t.time :time
      t.float :price
      t.integer :amount

      t.timestamps
    end
  end
end
