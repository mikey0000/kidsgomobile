class Dashboard::MessagesController < Dashboard::BaseResourceController
  belongs_to :device
  actions :index, :show
  protected
  def begin_of_association_chain
    @current_user
  end
end
