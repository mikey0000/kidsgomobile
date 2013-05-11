class Dashboard::BaseResourceController < InheritedResources::Base
  protect_from_forgery
  layout "dashboard"
end
