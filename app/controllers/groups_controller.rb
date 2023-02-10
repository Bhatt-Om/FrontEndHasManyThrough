class GroupsController < ApplicationController

  before_action :find_grop_id, only: [:edit, :update, :show, :destroy]

  def index
    @groups = current_user.groups 
  end

  def show
  end

  def new
    @group = Group.new 
  end

  def create
    @group = Group.new(grop_params)
    @group.user = current_user
    if @group.save 
      flash[:notice]= "Successfully Created Group"
      redirect_to groups_path
    else
      flash[:notice]= "Successfully Created Group"
      render 'new'
    end
  end

  def edit
  end

  def update
    # @gropu.user = current_user
    if @group.update(grop_params)
      flash[:alert] = "Successfully Update The Group"
      redirect_to groups_path
    else
      flash[:notice]= puts @group.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @gropu.destroy
    redirect_to groups_path
  end

  private 

  def find_grop_id 
    @group = Group.find(params[:id])
  end

  def grop_params 
    params.require(:group).permit(:name)
  end
end
