class Api::ProminentController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @details=Detail.all
    render json: @details
  end
  def show
    @detail=Detail.find(params[:id])
  end
  def new
    @detail =Detail.new
    render json: @detail
  end
  def create
    name = params[:name]
    mobile_numbers = params[:mobile]

    detail = Detail.new
    detail.name = name
    detail.save!
    mobile_numbers.each do |id|
      Mobile.where(number: id, detail_id: detail.id).first_or_create!
    end

    data = detail.as_json(only: [:name], include: [mobiles: { only: [:number] }])
    render json: data
    # if @detail.save
    #   render json: @detail
    #   redirect_to details_path
    # else
    #   render json :@detail, status: :unprocessable_entity
    # end
  end
  private
  def detail_params
    params.permit(:name,:mobile, :child, :religion,:father,:mother,:spouse,:email,:dob,:gender,:category,:degree)
  end

end