class Link < ActiveRecord::Migration
  def self.up
	  add_index :links,:created
	  add_index :links,:fid_id
  end

  def self.down
  end
end
