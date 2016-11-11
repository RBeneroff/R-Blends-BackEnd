class AllColorSchemesController < ApplicationController

  def create
    all_color_scheme = AllColorSchemes.new(all_color_scheme_params)
    if all_color_scheme.save
      render json: {status: 200, message: "Successful Color Scheme Saved"}
    else
      render json: {status: 422, all_color_scheme: all_color_scheme.errors}
    end
  end

  def index
    all_color_schemes = AllColorSchemes.all
    render json: {status: 200, all_color_schemes: all_color_schemes}
  end

  def show
    all_color_schemes = AllColorSchemes.find(params[:id])
    render json: {status: 200, all_color_schemes: all_color_schemes}
  end

  private

  def all_color_scheme_params
    params.required(:all_color_scheme).permit(:color_scheme_name, :color_one, :color_two, :color_three, :color_four, :color_five )
  end

end
