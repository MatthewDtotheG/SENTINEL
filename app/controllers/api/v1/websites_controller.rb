class Api::V1::WebsitesController < ApplicationController
  def index
    websites = Website.all
    render json: websites, status: 200
  end

  def create
    website = Website.create(website_params)
    render json: website, status: 201
  end

  def update
    @website.update(website_params)
    render json: @website, status: 200
  end

  def show
    render json: @website, status: 200
  end

  private
  def website_params
    params.permit(:name, :user_id)
  end
end
