class OffPiste < ApplicationRecord
  searchkick

  # Search field via elastic search
  # elastic search includes partial searching
  def self.search_name(field)
    OffPiste.search(field, fields: [:name]).first
  end

  def self.search_name_advanced(params)
    OffPiste.search("*", order: { params[:filter] => params[:order] }).map { |p| p }
  end

end