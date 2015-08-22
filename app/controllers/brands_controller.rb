class BrandsController < ApplicationController
  # GET /brands
  def index
    @brands = Brand.all
  end
end
