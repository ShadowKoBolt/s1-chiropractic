module Smug
  module Admin
    class ContactsController < CrudController
      class << self
        def item_actions
          [:show, :destroy, :index]
        end

        def show_attrs
          %w{email telephone message}
        end
      end
    end
  end
end
