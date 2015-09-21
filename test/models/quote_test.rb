require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = Quote.create(:author => 'Brian Stolte', :saying => 'I\'m more depressed than Oberyn Martell\'s face.')
		expected = 'BS#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual 
	end

end
