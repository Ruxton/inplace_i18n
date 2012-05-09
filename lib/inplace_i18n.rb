require "inplace_i18n/version"

module InplaceI18n
  require 'inplace_i18n/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
end