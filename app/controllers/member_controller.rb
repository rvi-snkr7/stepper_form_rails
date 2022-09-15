class MemberController < ApplicationController


  def index
    @details=Detail.all
    render json: @details
  end
  def show
    @detail=Detail.find(params[:id])
    render json: @detail
  end
  def new
    @detail =Detail.new
    render json: @detail
  end
  def create
    # @detail=Detail.create(name: params[:name],mobile: params[:mobile],child: params[:child],religion: params[:religion],father: params[:father],
    #                       mother: params[:mother],spouse: params[:spouse],email:params[email],
    #                       dob: params[:dob],gender: params[:gender],category: params[:category],degree: params[:degree])

    person_details = Detail.new
    person_details.name = params[:name]
    person_details.mobile = params[:mobile]
    person_details.child=params[:child]
    person_details.religion=params[:religion]
    person_details.father=params[:father]
    person_details.mother=params[:mother]
    person_details.spouse=params[:spouse]
    person_details.email=params[:email]
    person_details.dob=params[:dob]
    person_details.gender=params[:gender]
    person_details.category=params[:category]
    person_details.degree=params[:degree]
    person_details.save!
    render json: person_details
    # if @detail.save
    #   render json: @detail
    #   redirect_to details_path
    # else
    #   render json :@detail, status: :unprocessable_entity
    # end
  end
  # private
  # # def detail_params
  # #   params.permit(:name, :mobile, :child, :religion,:father,:mother,:spouse,:email,:dob,:gender,:category,
  # #   :degree)
  # end

end
