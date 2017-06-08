class OffPiste < ApplicationRecord
  searchkick

  # Search field via elastic search
  # elastic search includes partial searching
  def self.search_name(field)
    OffPiste.search(field, fields: [:name]).first
  end

  def self.search_name_advanced(params)
    if params.key?('filter')
      search_by_greater(params) if params[:filter] == "gt"
      search_by_less(params) if params[:filter] == "lt"
    else
      OffPiste.search('*', order: { params[:field] => params[:order] }).map { |w| w }
    end
  end

  private

  def self.search_by_greater(params)
    OffPiste.search('*', where: { params[:field] => {gt: params[:field_number].to_i} } , order: { params[:field] => params[:order] }).map { |w| w }
  end

  def self.search_by_less(params)
    OffPiste.search('*', where: { params[:field] => {lt: params[:field_number].to_i} } , order: { params[:field] => params[:order] }).map { |w| w }
  end

end