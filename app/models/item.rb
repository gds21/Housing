class Item < ApplicationRecord
  serialize :json_data, JSON

  def as_json(options)
    self.json_data
  end
end
