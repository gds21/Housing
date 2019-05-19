class AddJsonDataToApps < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :json_data, :json
  end
end
