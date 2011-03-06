class CreatePushes < ActiveRecord::Migration
  def self.up
    create_table :pushes do |t|
      t.string :after_sha
      t.string :before_sha
      t.string :compare
      t.boolean :forced

      t.references :committer
      t.references :branch

      t.timestamps
    end
  end

  def self.down
    drop_table :pushes
  end
end
