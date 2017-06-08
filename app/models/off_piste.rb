class OffPiste < ApplicationRecord
  searchkick

  # Search field via elastic search
  # elastic search includes partial searching
  def self.search_name(field)
    OffPiste.search(field, fields: [:name]).first
  end

  def self.search_name_advanced(params)
    if params.key?(:filter)
      filter = params[:filter].parameterize.underscore.to_sym
      OffPiste.search('*', where: { params[:field] => {filter => params[:filter_number].to_i} } , order: { params[:field] => params[:order] }).map { |w| w }
    else
      OffPiste.search('*', order: { params[:field] => params[:order] }).map { |w| w }
    end
  end

end