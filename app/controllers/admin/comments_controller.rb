module Admin
  class CommentsController < Admin::BaseController
    load_and_authorize_resource :conference, find_by: :short_title
    load_and_authorize_resource


    def index
      @ordered_events = Event.order(:title).all
    end
  end
end
