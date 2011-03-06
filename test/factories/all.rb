

Factory.define :committer do |c|
  c.sequence(:username) {|n| "committer_#{n}" }
  c.email { "#{username}@test.com" }
  c.name { "#{username.capitalize} Smith" }
end

Factory.define :repository do |r|
  #TODO
end

Factory.define :push do |p|
  #TODO
end

Factory.define :commit do |c|
  #TODO
end

