require 'test_helper'

class ApiVcrTest < ActionDispatch::IntegrationTest

  def test_it_returns_items
    VCR.use_cassette("") do

    end
  end
end
