module Refinery
  module Posters
    class Poster < Refinery::Core::BaseModel
      self.table_name = 'refinery_posters'


      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
