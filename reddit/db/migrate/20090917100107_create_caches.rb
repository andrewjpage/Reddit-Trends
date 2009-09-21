class CreateCaches < ActiveRecord::Migration
  def self.up
    create_table :caches do |t|
      t.integer :cid
      t.references :wid
      t.integer :updatetime
      t.text :graph
      t.string :timeperiod

      t.timestamps
    end
  end

  def self.down
    drop_table :caches
  end
end
