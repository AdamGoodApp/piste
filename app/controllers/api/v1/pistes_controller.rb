module Api
  module V1
    class PistesController < ApplicationController

      def search_name
        render json: { result: "" }
      end

    end
  end
end