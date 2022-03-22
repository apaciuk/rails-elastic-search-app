class Post < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  settings do
    mappings dynamic: false do
      indexes :id, index: :not_analyzed
      indexes :title, type: :text, analyzer: :english
      indexes :body, type: :text, analyzer: :english
      indexes :topic, type: :keyword
    end
  end
  belongs_to :user
end
