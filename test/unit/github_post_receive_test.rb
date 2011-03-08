require 'test_helper'

class GithubPostReceiveTest < ActiveSupport::TestCase

  def test_parse_payload
    payload = File.open('test/fixtures/files/payload.json', 'r').collect.join
    GithubPostReceive.new JSON.parse(payload)
  end

end
