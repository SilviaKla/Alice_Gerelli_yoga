class LessonsController < ApplicationController

  def show
    set_lesson
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def car_params
    params.require(:lesson).permit( :description, :name, :online, :address, :price, :level, :when)
  end

end
