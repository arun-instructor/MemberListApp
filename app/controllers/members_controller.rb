class MembersController < ApplicationController
  def index
    @members = Member.all
  end
  
  def create
    member = Member.create(name: params[:name], avatar: params[:avatar])
    
    redirect_to "/members"
  end
end
