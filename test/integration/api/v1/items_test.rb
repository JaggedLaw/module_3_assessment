require 'test_helper'

class ItemsTest < ActionDispatch::IntegrationTest

  attr_reader :item1, :item2

  def setup
    @item1 = Item.create(name: "Item1", description: "this is item onezie")
    @item2 = Item.create(name: "Item2", description: "this is item twozie")
  end

  def test_items_index_is_displayed_as_json
    get "/api/v1/items"

    output = JSON.parse(response.body)

    assert_response 200
    assert_equal 2, output.length
    item_first = output.first
    item_last = output.last
    assert_equal item1.name, "Item1"
    assert_equal item2.name, "Item2"

  end

  def test_items_show_is_displayed_as_json
    get "/api/v1/items/1"

    output = JSON.parse(response.body)

    assert_response 200
    assert_equal 6, output.length
    item_first = output.first
    assert_equal item1.name, "Item1"

  end

  def test_delete_request_deletes_item
    delete "/api/v1/items/1"

    assert_response 204

  end

end
