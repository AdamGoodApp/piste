class OffPiste < ApplicationRecord
  searchkick

  # Search field via elastic search
  # elastic search includes partial searching
  def self.search_name(field)
    OffPiste.search(field, fields: [:name])
  end

  def self.search_name_advanced(field, filter = nil, sort = nil)
    
  end

end