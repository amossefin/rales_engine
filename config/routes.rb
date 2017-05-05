Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'items/find', to: "items_find#show"
      get 'items/find_all', to: "items_find#index"
      resources :items, only: [:index, :show]

      get 'merchants/find', to: "merchants_find#show"
      get 'merchants/find_all', to: "merchants_find#index"
      resources :merchants, only: [:index, :show]

      get 'customers/find', to: "customers_find#show"
      get 'customers/find_all', to: "customers_find#index"
      get 'customers/:id/invoices', to: "customer_invoices#index"
      get 'customers/:id/transactions', to: "customer_transactions#index"
      resources :customers, only: [:index, :show]

      get 'invoices/find', to: "invoices_find#show"
      get 'invoices/find_all', to: "invoices_find#index"
      resources :invoices, only: [:index, :show]

      get 'transactions/find', to: "transactions_find#show"
      get 'transactions/find_all', to: "transactions_find#index"
      resources :transactions, only: [:index, :show]

      get 'invoice_items/find', to: "invoice_items_find#show"
      get 'invoice_items/find_all', to: "invoice_items_find#index"
      resources :invoice_items, only: [:index, :show]

    end
  end
end
