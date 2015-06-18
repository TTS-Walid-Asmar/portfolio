class Inventories::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
        @commentable = Inventory.find(params[:inventory_id])
    end
end
