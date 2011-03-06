class CreatePushes < ActiveRecord::Migration
  def self.up
    create_table :pushes do |t|
      t.string :after_sha
      t.string :before_sha
      t.string :compare
      t.boolean :forced

      t.belongs_to :pusher
      t.belongs_to :branch

      t.timestamps
    end
  end

  def self.down
    drop_table :pushes
  end
end
