# frozen_string_literal: true

require "test_helper"

module Dawa
  class ClientTest < Minitest::Test
    def test_that_you_can_get_an_instance
      assert_kind_of Dawa::Client, Dawa::Client.instance
    end

    def test_that_you_can_get_a_connection
      refute_nil Dawa::Client.instance.connection
    end
  end
end
