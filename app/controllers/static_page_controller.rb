class StaticPageController < ApplicationController
  def home
    render json: {message: 'Seja bem vindo'}
  end
end
