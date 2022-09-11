class API::V1::DetailsController < ApplicationController
  def index
    @details=Detail.all
  end
  def show
    @detail=Detail.find(params[:id])
  end
  def new
    @detail =Detail.new
  end
  def create
    @detail=Detail.create(detail_params)
    if @detail.save
      redirect_to @detail
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  private
  def detail_params
    params.require(:detail).permit(:name, :mobile, :child, :religion)
  end

end
