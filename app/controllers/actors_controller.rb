class ActorsController < ApplicationController
  before_action :set_actor

  def index; end

  private

  def set_actor
    @actor = Actor.includes(:movies).where('lower(name) like ? ', "%#{params[:actor]&.downcase}%").first
  end
end
