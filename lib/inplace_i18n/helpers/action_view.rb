module InplaceI18n
  module Helpers
    module ActionView

      extend ActiveSupport::Concern

      def inplace_i18n_js
        render 'inplace_i18n/js'
      end

      def inplace_i18n_styles
        render 'inplace_i18n/styles'
      end

    end
  end
end