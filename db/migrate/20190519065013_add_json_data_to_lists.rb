class AddJsonDataToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :json_data, :json
  end
end
