require 'test_helper'

class PushTest < ActiveSupport::TestCase

  def test_push_has_commits
    push = Factory(:push)
    c1 = Factory(:commit, :push => push)
    c2 = Factory(:commit, :push => push)
    c3 = Factory(:commit, :push => push)

    assert_equal 3, push.commits.count
    assert_equal 3, push.committers.count
  end

end
