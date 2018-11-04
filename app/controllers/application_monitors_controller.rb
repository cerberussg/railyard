class ApplicationMonitorsController < ApplicationController
  layout "application_monitor"

  def dashboard
    @monitors = ApplicationMonitor.all
  end

  def new
    @monitor = ApplicationMonitor.new
  end

  def create
    @monitor = ApplicationMonitor.new(application_monitor_params)

    respond_to do|format|
      if @monitor.save
        format.html { redirect_to dashboard_path, notice: "Application monitor was created!" }
      else
        format.html { render :new, notice: "Application monitor could not be created!" }
      end
    end
  end

  def destroy
    @monitor = ApplicationMonitor.find(params[:id])
    @monitor.destroy
    redirect_to dashboard_path, notice: "Application monitor was deleted!"
  end

  private

  def application_monitor_params
    params.require(:application_monitor).permit(:application_name, :web_address, :time_interval)
  end
end
