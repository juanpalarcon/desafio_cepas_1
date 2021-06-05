class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def authorize_admin!
        unless current_user.admin?
            flash[:error] = 'debes ser peter'
            redirect_to new_user_session_url

        end
    end
end
