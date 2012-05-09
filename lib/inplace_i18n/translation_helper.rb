module InplaceI18n
  module TranslationHelper
    extend ActiveSupport::Concern

    included do
      alias_method_chain :translate, :inplace_editing
      alias :t :translate_with_inplace_editing
    end

    def translate_with_inplace_editing(key, options = {})
      key = scope_key_by_partial(key).to_s
      inplace = true
      inplace = options[:inplace] unless options.blank?

      translation = translate_without_inplace_editing(key, options)

      if inplace
        key = I18n.locale.to_s + '.'+key
        translation = "&nbsp;" if translation.blank?
        translation = '<span class="i18n_translation"><span id="'+key+'" class="inplace_i18n"></span></span>' + translation
      end

      translation.html_safe

    end
  end
end