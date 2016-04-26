class ApiService

def initialize
  # @_connection = Faraday.new('')
end

def sample_response
  JSON.parse(connection.get("/path/path").body)
end

private
  def connection
    @_connection
  end

end
