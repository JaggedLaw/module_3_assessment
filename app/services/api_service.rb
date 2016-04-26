class ApiService

def initialize
  # @_connection = Faraday.new('')
end

def initialize
  @_connection = Faraday.new(url: "https://api.bestbuy.com/v1") do |faraday|
    faraday.request  :url_encoded
    faraday.response :logger
    faraday.adapter  Faraday.default_adapter
  end
  @api_key = "hhp47b5bvjda7pj44gsauf78"
end
#
# def search(param)
#   @connection.get("products(search=#{param})?format=json&show=sku,name,shortDescription,salePrice&apiKey=#{ENV['bestbuy_key']}")
# end


def sample_response
  JSON.parse(connection.get("/path/path").body)
end

private
  def connection
    @_connection
  end

end
