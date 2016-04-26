require 'test_helper'

class ApiVcrTest < ActionDispatch::IntegrationTest

  def test_it_returns_items
    # put the web request part of tests in a block
    VCR.use_cassette '/api/path' do
      response = api_service.method(api_url)

      within '.item1' do
        assert page.has_content?("Item i want to see")
      end

    end
  end
end
