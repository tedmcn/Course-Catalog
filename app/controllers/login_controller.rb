class LoginController < ApplicationController
  def welcome
    @my_courses=[];
    if signed_in?
      @my_enrollements = Enrollment.where("user_id = ?", current_user.id)
      @my_enrollements.each do |c|
        @my_courses.push(Course.find(c.course_id))
      end
    end
  end
end
