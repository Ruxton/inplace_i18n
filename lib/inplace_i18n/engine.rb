require 'inplace_i18n'

module InplaceI18n

  class Engine < ::Rails::Engine
    isolate_namespace InplaceI18n

    require 'inplace_i18n/hash_tools'
    Hash.send :include, InplaceI18n::HashTools

    initializer 'inplace_i18n.register_view_helper' do
      require 'inplace_i18n/helpers/action_view'
      ActionView::Base.send :include, InplaceI18n::Helpers::ActionView
    end

    initializer "inplace_i18n.install_translation_helper", after: 'i18n.callbacks'  do
      require 'inplace_i18n/translation_helper'
      ActionView::Helpers::TranslationHelper.send :include, InplaceI18n::TranslationHelper
    end
  end

end