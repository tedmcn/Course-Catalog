class SearchController < ApplicationController
  before_action :require_login
  def search
    @courses = Course.search(params[:search])
  end
end
