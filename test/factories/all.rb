require 'digest/sha1'

Factory.sequence(:sha) do |n|
  Digest::SHA1.hexdigest "sha-#{n}"
end

Factory.define :repository do |r|
  r.sequence(:name) {|n| "monkeysee-#{n}"}
  r.description "find out what branches people hang out in"
  r.homepage nil
  r.language "Ruby"
  r.organization nil
  r.url "https://github.com/jingta/monkeysee"
  r.created_at {Time.now - 1.day}
  r.size 1384
  r.private false
  
  r.fork false
  r.forks 1
  r.watchers 1

  r.has_issues true
  r.open_issues 0

  r.has_downloads true
  r.has_wiki true

  r.association :owner, :factory => :committer
end

Factory.define :branch do |b|
  b.name { "refs/head/" + ((rand(100) + 1 > 33) ? "master" : "cool-feature") }
  b.association :repository
end

Factory.define :push do |p|
  p.after_sha { Factory.next :sha }
  p.before_sha { Factory.next :sha }
  p.compare {|p| "https://github.com/jingta/monkeysee/compare/#{p.before_sha[0..6]}...#{p.after_sha[0..6]}"  }
  p.forced false
  p.association :pusher, :factory => :committer
  p.association :branch
end

Factory.define :commit do |c|
  c.sha { Factory.next :sha }
  c.message "Updated the awesome files and added a helper"

  c.modified ["awesome/file1.txt", "awesome/files.rb", "test/awesome/files_test.rb"]
  c.added ["awesome/helper.rb", "test/awesome/helper_test.rb"]
  c.removed []

  c.timestamp { Time.now - 1.hour }
  c.url {|c| "https://github.com/jingta/monkeysee/commit/#{c.sha}" }

  c.association :push
  c.association :committer
end

Factory.define :committer do |c|
  c.sequence(:username) {|n| "committer_#{n}" }
  c.email {|c| "#{c.username}@test.com" }
  c.name {|c| "#{c.username.capitalize} Smith" }
end
