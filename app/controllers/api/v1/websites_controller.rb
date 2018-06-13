class Api::V1::WebsitesController < ApplicationController
  before_action :set_website, only: [:show, :update, :websiteTargets]

  def index
    websites = Website.all
    render json: websites, status: 200
  end

  def create
    website = Website.create(website_params)
    render json: website, status: 201
  end

  def websiteTargets
    targets = Target.where(website_id: params[:id])
    render json: targets
  end

  def update
    @website.update(website_params)
    render json: @website, status: 200
  end

  def show
    render json: @website, status: 200
  end

  private

  def set_website
    @website = Website.find(params[:id])
  end

  def website_params
    params.permit(:name, :user_id)
  end
end
