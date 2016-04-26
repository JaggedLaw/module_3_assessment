require 'test_helper'

class ItemsTest < ActionDispatch::IntegrationTest

  attr_reader :item1, :item2

  def setup
    @item1 = Item.create(name: "Item1", description: "this is item onezie")
    @item2 = Item.create(name: "Item2", description: "this is item twozie")
  end

  def test_items_are_displayed_as_json
    get "/api/v1/items"

    output = JSON.parse(response.body)

    assert_response 200
    assert_equal 2, output.length
  end

end
