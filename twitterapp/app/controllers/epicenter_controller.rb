class EpicenterController < ApplicationController
  def feed
    # Here we initialize the array that will
    # hold tweets from the current_user's
    # following list.
    @following_tweets = []

    # We pull in all the tweets...
    @tweets = Tweet.all

      @tweet = Tweet.new


      @users = User.all

      @follower_count = 0

      if user_signed_in?
          @tweets.each do |tweet|
              current_user.following.each do |f|
                  if tweet.user_id == f
                      @following_tweets.push(tweet)
                    end
                  end
                end
          @users.each do |user|
              if user.following.include?(current_user.id)
                  @following_count =+1
              end
            end

      else
          redirect_to_new_user_session_path
        end
    end

     def search
    if params[:search].present?
        @users = User.search(params[:search])
    else @users = User.all
    end
  end


  def show_user
    @user = User.find(params[:id])
  end

  def now_following

    @user = User.find(params[:follow_id])


    current_user.following.push(params[:follow_id].to_i)

    current_user.save

     redirect_to user_profile_path(id: @user.id)

  end

  def unfollow
    @user = User.find(params[:unfollow_id])

    current_user.following.delete(params[:unfollow_id].to_i)

    current_user.save

     redirect_to user_profile_path(id: @user.id)

  end

  end
