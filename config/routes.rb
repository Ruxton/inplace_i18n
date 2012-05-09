InplaceI18n::Engine.routes.draw do
  put '/translations/:path', as: :translation, controller: :translations, to: :update, :constraints => { :path => /[\w.]+?/, format: false }
  get '/translations/:path', as: :translation, controller: :translations, to: :show, :constraints => { :path => /[\w.]+?/ , format: false }
end