class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.integer :id
      t.string :code
      t.date :last_downloaded_day

      t.timestamps
    end
  end
end
