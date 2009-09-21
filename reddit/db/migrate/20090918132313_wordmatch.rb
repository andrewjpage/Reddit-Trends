class Wordmatch < ActiveRecord::Migration
  def self.up
    add_index :wordmatches,:fid
	  add_index :wordmatches,:wid_id
  end

  def self.down
  end
end
