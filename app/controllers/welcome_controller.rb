class WelcomeController < ApplicationController
  def index
    gon.push(message: 'Ahoy!')
  end
end
