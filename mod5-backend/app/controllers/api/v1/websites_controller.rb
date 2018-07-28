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
    whatever = []
    specific_targets = Target.where(website_id: params[:id])

    deliverableHash = {
      browser: {},
      mobile: {},
      laptop: {},
      desktop: {},
      isp: {},
      city: {},
      country_code: {},
      country_name: {},
      district: {},
      timezone_name: {},
      postal_code: {},
      currency_code: {}
    }

  specific_targets.map do |target|
    target.attributes.each do |key, value|
      if deliverableHash.keys.include?(key.to_sym)
        deliverableHash[key.to_sym][value] ||= 0
        deliverableHash[key.to_sym][value] +=1
      end
    end
  end

  deliverableHash[:website_id] = params[:id]
  whatever.push(deliverableHash)

  render json: whatever, status: 200
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
