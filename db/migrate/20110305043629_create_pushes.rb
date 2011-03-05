class CreatePushes < ActiveRecord::Migration
  def self.up
    create_table :pushes do |t|
      t.string :after_sha
      t.string :before_sha
      t.string :compare
      t.boolean :forced
      t.string :pusher_email
      t.string :pusher_name
      t.string :ref

      t.timestamps
    end
  end

  def self.down
    drop_table :pushes
  end
end
