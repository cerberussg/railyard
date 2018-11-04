class ApplicationMonitor < ApplicationRecord
  enum time_interval: {'1 minute': 0, '5 minutes': 1, '15 minutes': 2, '25 minutes': 3}
  validates :application_name, presence: true
  validates :web_address, presence: true
  validates :time_interval, presence: true
  paginates_per 9
end
