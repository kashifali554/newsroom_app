class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CanCan::ControllerAdditions

  private

    def after_sign_out_path_for (resource_or_scope)
      "/"
    end

    def after_sign_in_path_for (resource_or_scope)
      "/"
    end

end
