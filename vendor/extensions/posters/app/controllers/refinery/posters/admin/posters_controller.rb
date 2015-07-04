module Refinery
  module Posters
    module Admin
      class PostersController < ::Refinery::AdminController

        crudify :'refinery/posters/poster',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def poster_params
          params.require(:poster).permit(:name, :dimensions, :printed_on, :print, :autographed, :photo_id, :price, :description)
        end
      end
    end
  end
end
