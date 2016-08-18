class EventsController < ApplicationController
  before_action :authenticate

  def events
    events = NurseEvent.where(:nurse_id => params[:nurse_id])
    render :json => {  :status => 200 }
  end

  protected
  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      Nurse.find_by(api_authtoken: token)
    end
  end

  def render_unauthorized
    self.headers['WWW-Authenticate'] = 'Token realm="Application"'
    render json: 'Bad credentials', status: 401
  end
end
