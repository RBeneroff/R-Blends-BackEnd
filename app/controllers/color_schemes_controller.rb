class ColorSchemesController < ApplicationController
  before_action :set_users, only: [:create, :index, :destroy, :show]

  def set_users
    @user = User.find(params[:user_id])
  end

  def create
    color_scheme = ColorScheme.new(color_scheme_params)
    color_scheme.user_id = @user.id

    if color_scheme.save
      render json: {status: 200, message: 'Created a new color scheme'}
    else
      render json: {status: 422, color_scheme: color_scheme.errors}
    end
  end

  # should this be colorSchemes, colorschemes or color_schemes?
  def index
    colorSchemes = @user.color_schemes
    render json: {status: 200, colorSchemes: colorSchemes}
  end

  def show
    colorScheme = @user.color_schemes.find(params[:id])
    render json: {status: 200, colorScheme: colorScheme}
  end

  def destroy
    ColorScheme.destroy(params[:id])
    render json: {status: 204}
  end

  def destroy_all
    ColorScheme.destroy_all
    render json: {status: 204}
  end

  # complete later
  def allColorSchemes
    render json: {status: 200, colorSchemes: ColorScheme.all}
  end

  private

  def color_scheme_params
    params.required(:color_scheme).permit(:color_scheme_name, :color_one, :color_two, :color_three, :color_four, :color_five )
  end

end
