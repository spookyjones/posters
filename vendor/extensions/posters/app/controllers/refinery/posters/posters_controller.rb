module Refinery
  module Posters
    class PostersController < ::ApplicationController

      before_action :find_all_posters
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @poster in the line below:
        present(@page)
      end

      def show
        @poster = Poster.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @poster in the line below:
        present(@page)
      end

    protected

      def find_all_posters
        @posters = Poster.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/posters").first
      end

    end
  end
end
