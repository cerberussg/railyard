class ApplicationMonitorsController < ApplicationController

  def dashboard
    @monitors = ApplicationMonitor.all
  end

  def new
    @monitor = ApplicationMonitor.new
  end

  private

  def application_monitor_params
    params.require(:application_monitor).permit(:application_name, :web_address)
  end
end
