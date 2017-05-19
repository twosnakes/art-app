class PiecesController < ApplicationController
  
  def index
    @pieces = Piece.all
  end
  
  def new

  end

  def create
    piece = Piece.new(
      title: params[:title],
      materials: params[:materials],
      date: params[:date],
      height: params[:height],
      width: params[:width],
      image: params[:image]
      )
    piece.save
     flash[:success] = "Piece Successfully Created"
     redirect_to "/pieces/#{ piece.id }"
  end

  def show
    piece_id = params[:id]
    @piece = Piece.find_by(id: piece_id)
    @title = @piece.title
  end 

  def edit 
    @piece = Piece.find(params[:id])
  end

  def update
    piece = Piece.find(params[:id])
    piece.assign_attributes(
      title: params[:title],
      materials: params[:materials],
      date: params[:date],
      height: params[:height],
      width: params[:width],
      image: params[:image]
      )
    piece.save
    flash[:success] = "Piece Successfully Updated"
    redirect_to "/piece/#{ piece.id }"
  end

  def destroy
    piece = Piece.find(params[:id])
    piece.destroy
    flash[:success] = "Piece Successfully Deleted"
    redirect_to '/'
  end 
 end  
