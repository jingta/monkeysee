class CreateCommitters < ActiveRecord::Migration
  def self.up
    create_table :committers do |t|
      t.string :email
      t.string :name
      t.string :username

      t.timestamps
    end
  end

  def self.down
    drop_table :committers
  end
end
