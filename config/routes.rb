Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :items do
        get '/find', to: "items_find#show"
        get '/find_all', to: "items_find#index"
        get '/', to: "items#index"
        get '/:id', to: "items#show"
      end

      namespace :merchants do
        get '/find', to: "merchants_find#show"
        get '/find_all', to: "merchants_find#index"
        get '/', to: "merchants#index"
        get '/:id', to: "merchants#show"
      end

      namespace :customers do
        get '/find', to: "customers_find#show"
        get '/find_all', to: "customers_find#index"
        get '/:id/invoices', to: "customer_invoices#index"
        get '/:id/transactions', to: "customer_transactions#index"
        get '/', to: "customers#index"
        get '/:id', to: "customers#show"
      end

      namespace :invoices do
        get '/:id/transactions', to: "transactions#index"
        get '/:id/items', to: "items#index"
        get '/find', to: "invoices_find#show"
        get '/find_all', to: "invoices_find#index"
        get '/', to: "invoices#index"
        get '/:id', to: "invoices#show"
      end

      namespace :transactions do
        get '/find', to: "transactions_find#show"
        get '/find_all', to: "transactions_find#index"
        get '/', to: "transactions#index"
        get '/:id', to: "transactions#show"
      end

      namespace :invoice_items do
        get '/find', to: "invoice_items_find#show"
        get '/find_all', to: "invoice_items_find#index"
        get '/', to: "invoice_items#index"
        get '/:id', to: "invoice_items#show"
      end
    end
  end
end
