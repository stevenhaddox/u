class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :original
      t.string :title
      t.string :short
      t.timestamps
    end
    
    add_index :links, :short
    add_index :links, :original
  end

  def self.down
    remove_index :links, :original
    remove_index :links, :short
    drop_table :links
  end
end
