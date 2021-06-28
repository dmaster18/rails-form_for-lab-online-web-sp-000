class SchoolClassesController < ApplicationController

  def index
    @schoolclasses = SchoolClass.all
  end
  
  def show
    @schoolclass = SchoolClass.find(params[:id])
  end
  
  def new
    @schoolclass = SchoolClass.new(title: params[:title], room_number: params[:room_number].to_i)
    @schoolclass.save
  end
  
  def create
    @schoolclass = SchoolClass.new(title: params[:title], room_number: params[:room_number].to_i)
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end
  
  def edit
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params.require(:schoolclass).permit(:title, :room_number.to_i))
    @schoolclass.save
  end
  
  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params.require(:schoolclass).permit(:title, :room_number.to_i))
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end
  
end