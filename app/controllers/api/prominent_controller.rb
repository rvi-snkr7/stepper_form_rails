class Api::ProminentController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @details = Mobile.all.pluck(:detail_id)
    @details.each do |id|
      @data= Detail.where(id: id)
    end
    render json: @data
  end

  def show
    @detail = Detail.find(params[:id])
  end

  def new
    @detail = Detail.new
    render json: @detail
  end


  def create
    name = params[:name]
    # mobile = params[:mobile]
    gender = params[:gender]
    child =params[:child]
    religion=params[:religion]
    image = params[:file]
    detail = Detail.new
    detail.name = name
    detail.gender = gender
    detail.child = child
    detail.religion = religion
    detail.save!
    detail.image.attach(image)
    # mobile.each do |id|
    #   Mobile.where(number: id, detail_id: detail.id).first_or_create!
    # end
    data = detail.as_json(only: [:name, :gender,:child,:religion,:file,:mobile])
    render json: data
    # if @detail.save
    #   render json: @detail
    #   redirect_to details_path
    # else
    #   render json :@detail, status: :unprocessable_entity
    # end
  end
  # def abc
  #   mobile_numbers = params[:mobile]
  #   detail=Detail.new
  #   detail.save!
  #   mobile_numbers.each do |id|
  #     Mobile.where(number: id, detail_id: detail.id).first_or_create!
  #   end
  #   data= detail.as_json(only:[mobiles: { only: [:number] }])
  #   render json:data
  # end

  private

  def detail_params
    params.permit(:name, :mobile, :child, :religion, :father, :mother, :spouse, :email, :dob, :gender, :category, :degree,:file)
  end

end