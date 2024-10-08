require "date"
class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
        
        @live_time = Time.now 
    end
    
    def new
        @tweets = Tweet.new
    end
    
    def create
        tweets=Tweet.new(message: params[:tweet][:message],tdate: Time.now)
        tweets.save
        redirect_to '/'    
    end
    
    def show
        @tweets = Tweet.find(params[:id])
        @live_time = Time.now 
    end
    
    def edit
        @tweets = Tweet.find(params[:id])
    end
    
    def destroy
        tweets = Tweet.find(params[:id])
        tweets.destroy
        redirect_to '/'
     end
    
end
