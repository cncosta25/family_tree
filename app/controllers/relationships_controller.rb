class RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
  end

  def show
    @relationships = Relationship.all
    @relationship = Relationship.find(params[:id])
  end

  def new
    @relationship = Relationship.new
    @members = Member.all
  end

  def create
    @relationship = Relationship.new
    @relationship.relationship_type = params[:relationship_type]
    @relationship.other_member_id = params[:other_member_id]
    @relationship.member_id = params[:member_id]

    if @relationship.save
      redirect_to "/families/", :notice => "Relationship created successfully."
    else
      render 'new'
    end
  end

  def edit
    @relationship = Relationship.find(params[:id])
  end

  def update
    @relationship = Relationship.find(params[:id])
    @members = Member.all

    @relationship.relationship_type = params[:relationship_type]
    @relationship.other_member_id = params[:other_member_id]
    @relationship.member_id = params[:member_id]

    if @relationship.save
      redirect_to "/families", :notice => "Relationship updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @relationship = Relationship.find(params[:id])

    @relationship.destroy

    redirect_to "/families", :notice => "Relationship deleted."
  end
end
