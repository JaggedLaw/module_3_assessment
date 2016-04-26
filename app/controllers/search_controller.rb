class SearchController < ApplicationController

  respond_to :json

  def index
    @found_items = api_service.search_products(params[:product][:search])
  end

  private

    def search_params
      params.permit(:filter)
    end
end
