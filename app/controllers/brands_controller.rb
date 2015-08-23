class BrandsController < ApplicationController
  # GET /brands
  def index
    @brands = Brand.paginate(:page => params[:page])
  end
end
