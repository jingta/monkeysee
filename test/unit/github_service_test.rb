require 'test_helper'

class GithubServiceTest < ActiveSupport::TestCase

  def test_parse_payload
    payload = File.open('test/fixtures/files/payload.json', 'r').collect.join
    puts payload
    puts JSON.parse payload
  end

end