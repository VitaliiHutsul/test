class TweetsController < ApplicationController
	def new
	 @tweet = Tweet.new
	end

	def create
	 	@tweet = Tweet.new(tweet_params)
	 	@tweet.save
	 	redirect_to root_path
	end

	def index
		@tweets = Tweets.all
	end
	private

	def tweet_params
	 	params.require(:tweet).permit(:user_id, :content)
	end
end