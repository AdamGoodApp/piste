class OffPiste < ApplicationRecord
  searchkick

  # Search field via elastic search
  # elastic search includes partial searching
  def self.elastic_search(field)
    OffPiste.search(field)
  end

end