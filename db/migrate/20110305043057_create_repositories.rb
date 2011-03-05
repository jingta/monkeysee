class CreateRepositories < ActiveRecord::Migration
  def self.up
    create_table :repositories do |t|
      t.string :description
      t.boolean :fork
      t.interger :forks
      t.boolean :has_downloads
      t.true :has_issues
      t.boolean :has_wiki
      t.string :homepage
      t.string :language
      t.string :name
      t.integer :open_issues
      t.string :organization
      t.string :owner_email
      t.string :owner_name
      t.boolan :private
      t.datetime :pushed_at
      t.integer :size
      t.string :url
      t.integer :watchers

      t.timestamps
    end
  end

  def self.down
    drop_table :repositories
  end
end
