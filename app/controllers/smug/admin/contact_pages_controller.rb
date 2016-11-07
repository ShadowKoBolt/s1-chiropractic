module Smug
  module Admin
    class ContactPagesController < CrudController
      class << self
        def input_mappings
          {
            body: :wysihtml5
          }.with_indifferent_access
        end

        def edit_attrs
          %w{name slug body}
        end

        def index_attrs
          %w{name}
        end
      end

      private

      def find_item
        @item = ContactPage.friendly.find(params[:id])
        @item = Smug::Admin::ShowDecorator.decorate(@item)
      end
    end
  end
end
