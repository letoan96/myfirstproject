class AddTotalPostViewsToUsersController < ApplicationController
  before_action :set_add_total_post_views_to_user, only: [:show, :edit, :update, :destroy]

  # GET /add_total_post_views_to_users
  # GET /add_total_post_views_to_users.json
  def index
    @add_total_post_views_to_users = AddTotalPostViewsToUser.all
  end

  # GET /add_total_post_views_to_users/1
  # GET /add_total_post_views_to_users/1.json
  def show
  end

  # GET /add_total_post_views_to_users/new
  def new
    @add_total_post_views_to_user = AddTotalPostViewsToUser.new
  end

  # GET /add_total_post_views_to_users/1/edit
  def edit
  end

  # POST /add_total_post_views_to_users
  # POST /add_total_post_views_to_users.json
  def create
    @add_total_post_views_to_user = AddTotalPostViewsToUser.new(add_total_post_views_to_user_params)

    respond_to do |format|
      if @add_total_post_views_to_user.save
        format.html { redirect_to @add_total_post_views_to_user, notice: 'Add total post views to user was successfully created.' }
        format.json { render :show, status: :created, location: @add_total_post_views_to_user }
      else
        format.html { render :new }
        format.json { render json: @add_total_post_views_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_total_post_views_to_users/1
  # PATCH/PUT /add_total_post_views_to_users/1.json
  def update
    respond_to do |format|
      if @add_total_post_views_to_user.update(add_total_post_views_to_user_params)
        format.html { redirect_to @add_total_post_views_to_user, notice: 'Add total post views to user was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_total_post_views_to_user }
      else
        format.html { render :edit }
        format.json { render json: @add_total_post_views_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_total_post_views_to_users/1
  # DELETE /add_total_post_views_to_users/1.json
  def destroy
    @add_total_post_views_to_user.destroy
    respond_to do |format|
      format.html { redirect_to add_total_post_views_to_users_url, notice: 'Add total post views to user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_total_post_views_to_user
      @add_total_post_views_to_user = AddTotalPostViewsToUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_total_post_views_to_user_params
      params.require(:add_total_post_views_to_user).permit(:total_post_views)
    end
end
