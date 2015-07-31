class PrepaymentsController < ApplicationController

  def index
    @version_course= VersionCourse.first
    @course = Course.first
  end
  
end