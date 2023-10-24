class Api::V1::GreetingController < ApplicationController
  def index
    @random_greeting = Greeting.order('RANDOM()').first
    render json: { greeting: @random_greeting }
  end
end
