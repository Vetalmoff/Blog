class AdminController < ApplicationController
    before_action :is_admin!     

    private

    def is_admin!
        redirect_to root_path, alert: "Permission denied" unless current_user&.admin?
    end
end