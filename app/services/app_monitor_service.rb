class AppMonitorService

  def initialize(params)
    @application_name = params[:application_name]
    @web_address = params[:web_address]
    @time_interval = params[:time_interval]
  end

  def self.call(params)
    new(params).send(:perform)
  end

  private

  attr_reader :application_name, :web_address, :time_interval

  def perform
    # TODO: will call the different types of job creation here,
    # Methods will be private and call into each other.
  end
end
