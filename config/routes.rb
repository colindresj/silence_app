SilenceApp::Application.routes.draw do

  get "lambs/index"

  get "lambs/create"

  get "lambs/update"

  root to: "lambs#index"

  resources :lambs, :only => [:index, :create, :update]
end
#== Route Map
# Generated on 22 Nov 2013 10:23
#
# lambs_create GET  /lambs/create(.:format) lambs#create
# lambs_update GET  /lambs/update(.:format) lambs#update
#         root      /                       lambs#index
#        lambs GET  /lambs(.:format)        lambs#index
#              POST /lambs(.:format)        lambs#create
#         lamb PUT  /lambs/:id(.:format)    lambs#update
