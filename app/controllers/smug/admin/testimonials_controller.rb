module Smug
  module Admin
    class TestimonialsController < CrudController
      class << self
        def index_attrs
          %w{ author updated_at created_at }
        end
      end
    end
  end
end
