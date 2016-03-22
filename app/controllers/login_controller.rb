class LoginController < ApplicationController
  def welcome
    @my_enrollements = Enrollment.where("user_id = ?", current_user.id)
    @my_courses=[];
    if @my_enrollements != []
      @my_enrollements.each do |c|
        @my_courses.push(Course.find(c.course_id))
      end
    end
  end
end
