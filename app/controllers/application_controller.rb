require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    current_user#_path
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

  def index
    @vacancies = Vacancy.all
  end

  def show
    @vacancies = Vacancy.find(params[:id])
  end
end
