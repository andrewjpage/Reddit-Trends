class WordWeekFreqIndex < ActiveRecord::Migration
  def self.up
    add_index :words,:weekfreq
  end

  def self.down
  end
end
