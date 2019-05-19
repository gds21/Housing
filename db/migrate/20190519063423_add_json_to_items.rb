class AddJsonToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :json_data, :json
  end
end
