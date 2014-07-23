class TopController < ApplicationController
  def index
    redirect_to new_administrator_session_path
  end
end
