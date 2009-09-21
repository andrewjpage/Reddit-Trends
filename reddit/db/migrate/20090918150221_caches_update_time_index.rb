class CachesUpdateTimeIndex < ActiveRecord::Migration
  def self.up
    add_index :caches,:updatetime
    add_index :caches,:wid_id
    
  end

  def self.down
  end
end
