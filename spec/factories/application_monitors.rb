FactoryBot.define do
  factory :application_monitor do
    application_name { "Test Application" }
    web_address { "https://testapplication.app" }
    time_interval { "25 minutes" }
  end
end
