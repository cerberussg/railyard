class CreateApplicationMonitors < ActiveRecord::Migration[5.2]
  def change
    create_table :application_monitors do |t|
      t.string :application_name
      t.string :web_address

      t.timestamps
    end
  end
end
