class Dashboard::DevicesController < Dashboard::BaseResourceController
  actions :index, :show
  protected
  def begin_of_association_chain
    @current_user
  end
end
