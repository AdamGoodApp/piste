module Api
  module V1
    class PistesController < ApplicationController

      def search_name
        result = OffPiste.search_name(name_params[:name])
        render json: { result: result }
      end

      private

      def name_params
        params.require(:piste).permit(:name)
      end

    end
  end
end