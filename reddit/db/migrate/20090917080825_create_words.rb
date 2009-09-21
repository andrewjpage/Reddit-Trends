class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.integer :wid
      t.string :word
      t.integer :freq
      t.integer :weekfreq

      t.timestamps
    end
  end

  def self.down
    drop_table :words
  end
end
