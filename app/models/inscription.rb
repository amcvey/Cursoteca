class Inscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :version_course
end
