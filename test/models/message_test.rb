require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  before do
    @message = Message.new
  end
  describe "body validations" do
    it "won't be empty" do
      @message.wont_be :valid?
      @message.errors[:body].must_equal ["can't be blank"]
    end
  end
end
