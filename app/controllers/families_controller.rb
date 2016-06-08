class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def show
    @family = Family.find(params[:id])
    @relationship = Relationship.new
    @members = @family.members
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new
    @family.is_member = params[:is_member]
    @family.user_id = params[:user_id]
    @family.name = params[:name]

    if @family.save
      redirect_to "/show/#{@family.id}", :notice => "Family created successfully."
    else
      render 'new'
    end
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])

    @family.is_member = params[:is_member]
    @family.user_id = params[:user_id]
    @family.name = params[:name]

    if @family.save
      redirect_to "/families/#{@family.id}", :notice => "Family updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @family = Family.find(params[:id])

    @family.destroy

    redirect_to "/families", :notice => "Family deleted."
  end
end
