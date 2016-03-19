class CourseController < ApplicationController
  before_action :require_login

  def index

    @course = Course.all
  end
end
