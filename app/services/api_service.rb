class ApiService

  attr_reader :connection, :api_key

  def initialize
    @_connection = Faraday.new(url: "https://api.bestbuy.com/v1") do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
    @api_key = "hhp47b5bvjda7pj44gsauf78"
  end


  def search_products(sample)
    JSON.parse(connection.get("products(search=#{sample})?format=json&show=sku,name,shortDescription,salePrice&apiKey=#{api_key}").body)
  end

  private
    def connection
      @_connection
    end

end
