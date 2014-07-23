class AdministratorsController < ApplicationController
  before_action :authenticate_administrator! ,:set_administrator


  private
  def set_administrator
    @administrator ||= current_administrator
  end

  def administrator_params
    params.require(:administrator).permit(:name, :email, :password)
  end
end
