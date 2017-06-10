module Api
  module V1
    class PistesController < ApplicationController

      before_action :find_piste, only: [:canvas]

      def search_name
        result = OffPiste.search_name(name_params[:name]) || "Could not find Piste"
        render json: { result: result }
      end

      def search_advanced
        result = OffPiste.search_advanced(piste_params) || "Could not find Pistes"
        render json: { result: result }
      end

      def canvas
        gon.piste = @piste
        canvas_html = render_to_string(partial: 'pistes/canvas.html.erb')
        render json: { canvas: canvas_html }
      end

      private

      def name_params
        params.require(:piste).permit(:name)
      end

      def piste_params
        params.require(:piste).permit(:field, :filter, :filter_number, :order)
      end

      def piste_id_params
        params.require(:piste).permit(:piste_id)
      end

      def find_piste
        @piste = OffPiste.find_by_piste_id(piste_id_params[:piste_id])
      end

    end
  end
end