require 'test_helper'

class ApiVcrTest < ActionDispatch::IntegrationTest

  def test_it_returns_items
    # put the web request part of tests in a block
    VCR.use_cassette 'search/index' do
      save_and_open_page
      # As a user When I visit the "/" And I fill in the search box with "sennheiser"
      # and click "search" Then my current path should be "/search"
      # And I should see exactly 15 results And each result should contain
      # sku, name, customer average review, short description, sale price, and image ONLY

      # response = api_service.method(api_url)
      #
      # within '.item1' do
      #   assert page.has_content?("Item i want to see")
      # end
      #
    end
  end
end
