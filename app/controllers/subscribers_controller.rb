class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to root_path, notice: "You have joined our mailing list."
    else
      redirect_to root_path, notice: "Something wnet wrong and you could not join mailing list."
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
