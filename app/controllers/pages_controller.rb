class PagesController < ApplicationController
  # GET /pages/1
  def show
    @page = Page.friendly.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render 'shared/404', :status => 404
  end
end
