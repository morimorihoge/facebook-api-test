class SessionsController < ApplicationController
  def create
    logger.error request.env['omniauth.auth'].inspect
    session[:fb_token] = env['omniauth.auth']['credentials']['token']
    redirect_to page_index_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
