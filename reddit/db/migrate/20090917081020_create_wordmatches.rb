class CreateWordmatches < ActiveRecord::Migration
  def self.up
    create_table :wordmatches do |t|
      t.string :fid
      t.references :wid

      t.timestamps
    end
  end

  def self.down
    drop_table :wordmatches
  end
end
