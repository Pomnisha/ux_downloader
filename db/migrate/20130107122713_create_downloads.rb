class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.integer :id
      t.string :request
      t.string :instrument_id
      t.date :date
      t.binary :file

      t.timestamps
    end
  end
end
