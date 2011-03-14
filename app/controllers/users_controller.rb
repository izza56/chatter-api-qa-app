class UsersController < ApplicationController
  

  # Tell user they're authorized and show their id info.
  # let them pick an app to launch or access settings for.
  def show
    @user = User.find(params[:id])
    current_user = @user
    # get an Account in the blitz org Joe Salesy is in - proves cross-org 
    # access works without a remote access app (stduser@eeorg.net/ test1234)
    @out = Session.do_get(current_user, "/sobjects/").response.body.response.body
    #@out = Chatout.get_news_feed(@user)
    #@out = Session.do_get(current_user, "/chatter/users/005D0000001GYrLIAW").response.body
    #Notifier.notify(@user)
  end



  # # GET /users
  # # GET /users.xml
  # def index
  #   @users = User.all
  # 
  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.xml  { render :xml => @users }
  #   end
  # end
  # # GET /users/new
  # # GET /users/new.xml
  # def new
  #   @user = User.new
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.xml  { render :xml => @user }
  #   end
  # end
  # 
  # # GET /users/1/edit
  # def edit
  #   @user = User.find(params[:id])
  # end
  # 
  # # POST /users
  # # POST /users.xml
  # def create
  #   @user = User.new(params[:user])
  # 
  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to(@user, :notice => 'User was successfully created.') }
  #       format.xml  { render :xml => @user, :status => :created, :location => @user }
  #     else
  #       format.html { render :action => "new" }
  #       format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # PUT /users/1
  # # PUT /users/1.xml
  # def update
  #   @user = User.find(params[:id])
  # 
  #   respond_to do |format|
  #     if @user.update_attributes(params[:user])
  #       format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
  #       format.xml  { head :ok }
  #     else
  #       format.html { render :action => "edit" }
  #       format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # DELETE /users/1
  # # DELETE /users/1.xml
  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to(users_url) }
  #     format.xml  { head :ok }
  #   end
  # end
end
