class GithubPostReceive < ActiveRecord::Base

  def initialize(payload)
	  @payload = payload
  end


	def save
		json = @payload
    json_repo = json['repository']
    owner = parse_committer!(json_repo['owner'])
    repo_attrs = json_repo.merge({ :updated_at => json_repo['pushed_at'], 
      :owner => owner }).reject{|k,v| ['pushed_at', 'owner'].include? k }
    repo = Repository.find_or_create_by_name(repo_attrs)

    pusher = parse_committer! json['pusher']

    branch = Branch.find_or_create_by_name(json['ref'], :repository => repo, 
    	       :owner => (json['before'] == ('0'*44) ? pusher : nil))

    push = Push.create(json.merge(:before_sha => json['before'], 
    	   	       :after_sha => json['after'], 
		       :pusher => pusher,
		       :branch => branch).reject{|k,v| 
		         ['repository','commits','after','before','ref','pusher'].include? k})

    json_commits = json['commits']
    json_commits.each do |c|
      author = parse_committer! c['author']
      commit = Commit.create(c.merge(:committer => author, 
                 :push => push, :sha => c['id']).reject{|k,v|
		   ['author','id'].include? k})
    end

    true
	end


	private

  def parse_committer!(json)
    Committer.find_or_create_by_email(json['email'], 
      :name => json['name'], 
		  :username => json['username'])
  end



	

end
