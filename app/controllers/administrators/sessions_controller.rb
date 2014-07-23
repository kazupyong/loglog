class Administrators::SessionsController < Devise::SessionsController
  layout "login"
  def after_sign_in_path_for(resource)
    administrators_dashboard_index_path
  end
  def after_sign_out_path_for(resource)
    new_administrator_session_path
  end
end