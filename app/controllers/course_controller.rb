class CourseController < ApplicationController
  before_action :require_login

  def index
    #@course = Course.all
    @course = Course.search(params[:search]).order('created_at DESC')
  end

  def create
    Enrollment.create(user_id: current_user.id, course_id: params[:course])
    redirect_to :login => "welcome"
  end
end
