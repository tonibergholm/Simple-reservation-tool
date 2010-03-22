require 'test_helper'

class EventTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert EventType.new.valid?
  end
end
