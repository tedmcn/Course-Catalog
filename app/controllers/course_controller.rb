class CourseController < ApplicationController
  before_action :require_login

  def index
    #@course = Course.all
    @course = Course.search(params[:search]).order('created_at DESC')
  end
end
