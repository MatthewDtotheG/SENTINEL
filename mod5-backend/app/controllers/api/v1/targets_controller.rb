class Api::V1::TargetsController < ApplicationController

  def index
    targets = Target.all
    render json: targets, status: 200
  end

  def create
    target = Target.create(target_params)
    render json: target, status: 201
  end

  def update
    @target.update(target_params)
    render json: @target, status: 200
  end

  def show
    render json: @target, status: 200
  end

  private

  def target_params
    params.permit(:browser, :mobile, :laptop, :desktop, :ip,
      :isp, :city, :country_code, :country_name, :district, :timezone_name, :postal_code, :currency_code, :website_id)
  end
end
