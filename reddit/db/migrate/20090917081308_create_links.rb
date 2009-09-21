class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.references :fid
      t.string :title
      t.integer :score
      t.integer :num_comments
      t.integer :ups
      t.integer :created
      t.integer :downs
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
