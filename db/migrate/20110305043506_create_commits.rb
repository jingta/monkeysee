class CreateCommits < ActiveRecord::Migration
  def self.up
    create_table :commits do |t|
      t.references :committer

      t.string :sha
      t.string :message
      t.string :modified
      t.string :added
      t.string :removed
      t.timestamp :timestamp
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :commits
  end
end
