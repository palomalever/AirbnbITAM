class SubirCasaController < ApplicationController
  
  #GET /properties
  def index
  	@properties = Property.all
  end

  #GET /properties/:id
  def show
  	@property = Property.find(params[:id])
  end

  #GET /articles/new
  def new
  	@property = Property.new
  end
#POST/properties
  def create 
  	@property =Article.new ({ tipo: params[:property][:tipo],
  							direccion: params[:property][:direccion], 
  							precio: params[:property][:precio],
  							descripcion: params[:property][:descripcion]})
  	@property.save
  	redirect_to @property
  end
end
