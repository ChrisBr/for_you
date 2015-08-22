class OffersController < ApplicationController
  # GET /offers
  def index
    @offers = Offer.all
  end
end
