require 'test_helper'

class GithubServiceTest < ActiveSupport::TestCase

  def test_parse_payload
    payload = File.open('test/fixtures/files/payload.json', 'r').collect.join
    GithubService.parse_post_commit_payload! payload
  end

end