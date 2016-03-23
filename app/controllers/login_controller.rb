class LoginController < ApplicationController
  include SessionsHelper
  def welcome
    @my_enrollements = Enrollment.where("user_id = ?", current_user.id)
    @my_courses=[];
    @my_enrollements.each do |c|
      @my_courses.push(Course.find(c.course_id))
    end
  end
end
