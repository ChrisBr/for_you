class OffersController < ApplicationController
  # GET /offers
  def index
    @offers = Offer.paginate(:page => params[:page])
  end
end
