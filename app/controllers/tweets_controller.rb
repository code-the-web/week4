class TweetsController < ApplicationController

  # 모든 트윗을 읽다
  def index
    @tweets = Tweet.all
  end

  # 새로운 트윗을 만드는 페이지
  def new
  end
  
  # 새로운 트윗을 만들다
  def create
    @tweet = Tweet.new
    @tweet.tweet = params[:tweet][:tweet]
    @tweet.user_name = params[:tweet][:user_name]
    @tweet.category = params[:tweet][:category]
    if params[:tweet][:is_public] == "공개"
      @tweet.is_public = true
    else
      @tweet.is_public = false
    end
    @tweet.save
    redirect_to tweet_path(id: @tweet.id)
  end

  # 하나의 트윗을 읽다
  def show
    @tweet = Tweet.find_by_id(params[:id])
  end

  # 트윗을 수정하는 페이지
  def edit
    @tweet = Tweet.find_by_id(params[:id])
  end

  # 트윗을 수정한다
  def update
    @tweet = Tweet.find_by_id(params[:id])
    @tweet.tweet = params[:tweet][:tweet]
    @tweet.user_name = params[:tweet][:user_name]
    @tweet.category = params[:tweet][:category]
    if params[:tweet][:is_public] == "공개"
      @tweet.is_public = true
    else
      @tweet.is_public = false
    end
    @tweet.save
    redirect_to tweet_path(id: @tweet.id)
  end

  # 트윗을 삭제한다
  def destroy
  end


end
