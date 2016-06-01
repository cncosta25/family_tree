class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new
    @member.surname = params[:surname]
    @member.name = params[:name]
    @member.notes = params[:notes]
    @member.family_id = params[:family_id]
    @member.image = params[:image]

    if @member.save
      redirect_to "/members", :notice => "Member created successfully."
    else
      render 'new'
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])

    @member.surname = params[:surname]
    @member.name = params[:name]
    @member.notes = params[:notes]
    @member.family_id = params[:family_id]
    @member.image = params[:image]

    if @member.save
      redirect_to "/members", :notice => "Member updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])

    @member.destroy

    redirect_to "/members", :notice => "Member deleted."
  end
end
