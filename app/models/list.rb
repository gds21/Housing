class List < ApplicationRecord
  serialize :json_data, JSON

  def as_json(options)
    json = self.json_data
    json[:id] = id
    json
  end
end
