class InstructorController < ApplicationController
  before_action :require_login

  def index
    @instructor = Instructor.all
  end
end
