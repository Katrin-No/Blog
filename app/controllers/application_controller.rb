class ApplicationController < ActionController::Base
  def need_admin_role
    unless user_signed_in? && current_user.admin?
      redirect_to new_user_session_path
    end
  end
end
