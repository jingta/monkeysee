
Factory.define :repository do |r|
  r.name "monkeysee"
  r.description "find out what branches people hang out in"
#  r.homepage "nil"
  r.language "ruby"
#  r.organization "nil"
  r.url "github.com/jingta/monkeysee"
  r.pushed_at {Time.now - 1.day}
  r.size = 123013
  r.private false
  
  r.fork false
  r.forks 0
  r.watchers 0

  r.has_issues false
  r.open_issues 0

  r.has_downloads false
  r.has_wiki false

  r.association :committer
end

Factory.define :branch do |b|
  b.association :repository
end

Factory.define :push do |p|
  #TODO
end

Factory.define :commit do |c|
  #TODO
end

Factory.define :committer do |c|
  c.sequence(:username) {|n| "committer_#{n}" }
  c.email { "#{username}@test.com" }
  c.name { "#{username.capitalize} Smith" }
end
