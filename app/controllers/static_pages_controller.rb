class StaticPagesController < ApplicationController
  skip_after_action :verify_authorized, only: %i[about_me]

  def about_me; end
end
