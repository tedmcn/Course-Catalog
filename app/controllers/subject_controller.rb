class SubjectController < ApplicationController
  before_action :require_login

  def index
    @subject = Subject.all
  end
end
