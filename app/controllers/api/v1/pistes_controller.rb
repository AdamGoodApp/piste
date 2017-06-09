module Api
  module V1
    class PistesController < ApplicationController

      def search_name
        result = OffPiste.search_name(name_params[:name])
        render json: { result: result }
      end

      def search_advanced
        result = OffPiste.search_name_advanced(piste_params)
        render json: { result: result }
      end

      private

      def name_params
        params.require(:piste).permit(:name)
      end

      def piste_params
        params.require(:piste).permit(:field, :filter, :filter_number, :order)
      end

    end
  end
end