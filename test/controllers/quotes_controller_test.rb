require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
    quote = Quote.create(:author => 'Brian Stolte', :saying => 'I\'m more depressed than Oberyn Martell\'s face.')
    get :show, :id => quote.id
    assert_response :success
  end

  test "quote show page, not found" do 
  	get :show, :id => 'OMG'
  	assert_response :not_found
  end
end
