class CreateBranches < ActiveRecord::Migration
  def self.up
    create_table :branches do |t|
      t.string :name
      t.references :repository

      t.timestamps
    end
  end

  def self.down
    drop_table :branches
  end
end