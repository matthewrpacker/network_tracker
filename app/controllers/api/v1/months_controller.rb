class Api::V1::MonthsController < ApplicationController
  # respond_to :json

  # def update
  #   month = Month.find(params[:id])
  #
  #   month.update_attributes(month_params)
  #   month.save
  # end

  def update
    month = Month.find(params[:id])
    if month.update(month_params)
      render json: month
    else
      render 'Invalid Update', status: 400
    end
  end

  private

  def month_params
    params.permit(:method, :date, :meeting, :name)
  end
end
