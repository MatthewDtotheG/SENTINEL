class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :userWebsites]

  def index
    users = User.all
    render json: users, status: 200
  end

  def create
    user = User.create(user_params)
    render json: user, status: 201
  end

  def userWebsites
    websites = Website.where(user_id: params[:id])
    render json: websites
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def show
    render json: @user, status: 200
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :password, :password_digest)
  end
end
