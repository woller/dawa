# frozen_string_literal: true

require "test_helper"

module Dawa
  class AddressTest < Minitest::Test
    def test_filter_can_find_addresses
      addresses = Dawa::Address.filter(street: "Rødkildevej", street_no: 46)
      first_address = addresses[0]
      second_address = addresses[1]

      assert_equal 2, addresses.count
      assert_equal "Rødkildevej", first_address.street
      assert_equal "46", first_address.street_no
      assert_equal "2400", first_address.zip_code
      assert_equal "København NV", first_address.city
      assert_equal "Rødkildevej", second_address.street
      assert_equal "46", second_address.street_no
      assert_equal "8930", second_address.zip_code
      assert_equal "Randers NØ", second_address.city
    end

  end
end
