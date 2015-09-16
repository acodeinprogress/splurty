require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
    quote = Quote.create(:author => "Irving Berlin", :saying => "Life is 10 percent what you make it, and 90 percent how you take it.")
    get :show, :id => quote.id
    assert_response :success
  end

  test "quote show page, not found" do
    get :show, :id => 'OMG'
    assert_response :not_found
  end
end
