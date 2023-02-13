class GroupmembershipsController < ApplicationController
  
  before_action :find_membership_id, only: [:edit, :update, :show, :destroy]

  def index
    @memberships = current_user.groupmemberships
  end

  def show
  end

  def new
    @membership = Groupmembership.new 
  end

  def create
    @membership = Groupmembership.new(membership_params)
    @membership.user_id = current_user.id 
    if @membership.save 
      flash[:notice] = "Successfully Enroll The Membership"
      redirect_to groupmemberships_path
    else
      flash[:notice] = puts @membership.errors.full_messages
      render 'new'
    end
  end

  def update
    # @membership.user_id = current_user.id 
    if @membership.update(membership_params)
      flash[:notice] = "Successfully Update The Membership"
      redirect_to groupmemberships_path
    else
      flash[:notice] = puts @membership.errors.full_messages
      render 'new'
    end
  end

  def destroy    
    @membership.user_id = current_user.id
    @membership.destroy
    redirect_to groupmemberships_path
  end

  private

  def find_membership_id 
    @membership = Groupmembership.find(params[:id])
  end

  def membership_params
    params.require(:groupmembership).permit(:plane, :user_id, :group_id, :membershipdate)
  end
end
