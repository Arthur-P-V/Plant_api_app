class Api::PlantsController < ApplicationController
  def index
    response = HTTP.get("https://trefle.io/api/v1/plants?token=#{Rails.application.credentials.plant_api[:api_key]}&filter[common_name]=#{params[:name]}")
    render json: response.parse
  end
end
