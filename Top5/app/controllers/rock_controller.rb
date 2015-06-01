class RockController < ApplicationController
  def roll
    @songs = Song.all
  end


class RockController < ApplicationController
  def index
    @songs = Song.order(rating: :desc).limit(5)
  end

    def user_profiles
        @user = user.find(params[:id])
  end
end

end
