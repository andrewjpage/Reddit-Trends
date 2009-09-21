class Word < ActiveRecord::Migration
  def self.up
    add_index :words,:wid
    add_index :words,:freq
    
  end

  def self.down
  end
end
