Rails.application.routes.draw do

  get 'home/index'

  get 'vturn' => 'vista#vturn'
  get 'nopaga' => 'vista#nopaga'

  resources :despachos
  resources :asistencia_compras
  resources :trabajador_seccions
  resources :detalle_compras
  resources :pago_compras

  resources :compras do
    get "cuota", :on => :member
    get "deta", :on => :member
  end

  resources :producto_seccions
  resources :detalle_pedidos
  resources :local_pedidos
  resources :producto_bodegas
  resources :seccion_locals
  resources :locals
  resources :bodega_pedidos
  resources :usuarios
  resources :cargo_trabajadors
  resources :pedidos

  resources :tarjets

  resources :productos
  resources :turnos
  resources :vehiculos
  resources :modelos
  resources :estado_despachos
  resources :marcas
  resources :clientes
  resources :tipo_tarjets
  resources :tipo_compras
  resources :tipo_pagos
  resources :tipo_turnos
  resources :tipo_productos
  resources :estados
  resources :proveedors
  resources :bodegas
  resources :seccions
  resources :trabajadors
  resources :tipo_trabajadors
  resources :estado_habilitados
  resources :tipo_usuarios
  resources :comunas
  resources :regions
  resources :funcion
  resources :vista
  resources :resumens do
    collection do
      get 'resu'
      get 'delete'
    end
  end

  resources :bloqueos do
    collection do
      get 'gene'
    end
  end




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
