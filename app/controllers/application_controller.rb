class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def authorize_admin!
        unless current_user.admin?
            flash[:error] = 'solo admin pueden editar'
            redirect_to new_user_session_url

        end
    end
end
