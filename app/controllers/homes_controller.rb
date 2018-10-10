class HomesController < ApplicationController
  require 'faker'
  before_action :set_home, only: [:edit, :update, :destroy]

  WillPaginate.per_page = 10
  def index
    @homes = Home.all
  end


  def show
    @home = Home.find_by(id: params[:id])
  end

  def father_details
     @home = Home.find_by(id: params[:id])
  end

  def mother_details
     @home = Home.find_by(id: params[:id])
  end

  def children_details
     @home = Home.find_by(id: params[:id])
  end
  def new
    @home = Home.new
  end


  def edit
  end

  private
    def set_home
      @home = Home.find(params[:id])
    end

    def home_params
      params.require(:home).permit(:index, :Name, :Aadhar, :Dob, :Father, :Mother, :Children)
    end
end
