class AddTimeIntervalToApplicationMonitors < ActiveRecord::Migration[5.2]
  def change
    add_column :application_monitors, :time_interval, :integer, default: 0
  end
end
