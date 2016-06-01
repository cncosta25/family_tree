class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
  end

  def show
    @relationship = Relationship.find(params[:id])
  end

  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.new
    @relationship.relationship_type = params[:relationship_type]
    @relationship.other_member_id = params[:other_member_id]
    @relationship.member_id = params[:member_id]

    if @relationship.save
      redirect_to "/relationships", :notice => "Relationship created successfully."
    else
      render 'new'
    end
  end

  def edit
    @relationship = Relationship.find(params[:id])
  end

  def update
    @relationship = Relationship.find(params[:id])

    @relationship.relationship_type = params[:relationship_type]
    @relationship.other_member_id = params[:other_member_id]
    @relationship.member_id = params[:member_id]

    if @relationship.save
      redirect_to "/relationships", :notice => "Relationship updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @relationship = Relationship.find(params[:id])

    @relationship.destroy

    redirect_to "/relationships", :notice => "Relationship deleted."
  end
end