class CreateBranches < ActiveRecord::Migration
  def self.up
    create_table :branches do |t|
      t.string :name
      t.belongs_to :repository
      t.belongs_to :owner

      t.timestamps
    end
  end

  def self.down
    drop_table :branches
  end
end
