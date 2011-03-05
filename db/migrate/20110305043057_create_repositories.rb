class CreateRepositories < ActiveRecord::Migration
  def self.up
    create_table :repositories do |t|
      t.string :name
      t.string :description
      t.string :homepage
      t.string :language
      t.string :organization
      t.string :url
      t.datetime :pushed_at
      t.integer :size
      t.boolan :private

      t.boolean :fork
      t.interger :forks
      t.integer :watchers

      t.true :has_issues
      t.integer :open_issues

      t.boolean :has_downloads
      t.boolean :has_wiki

      t.references :committer

      t.timestamps
    end
  end

  def self.down
    drop_table :repositories
  end
end
