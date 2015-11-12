class UserController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def create
    puts params
    @user = User.new(name: params[:name], password: params[:password])
    if @user.save
      render :show, status: :created
    else
      render json: {errors: @user.errors}, status: :unprocessable_entity
    end
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params)
      render :show, status: :success
    else
      render json: {errors: @user.errors}, status: :unprocessable_entity
    end
  end
  def destroy
  end
end
