require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
    quote = FactoryGirl.create(:quote)
    get :show, :id => quote.id
    assert_response :success
  end

  test "quote show page, not found" do 
  	get :show, :id => 'OMG'
  	assert_response :not_found
  end

  test "create a quote succes" do
  	post :create, {:quote => {
  		:saying => "To be or not to be",
  		:author => "William Shakespeare"
  		} 
  	}
  	assert_redirect_to root_path
  end

  test "create a quote validation error" do
  	
  end

end
