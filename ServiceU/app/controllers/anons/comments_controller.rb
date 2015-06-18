class Anons::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
        @commentable = Anon.find(params[:anon_id])
    end
end
