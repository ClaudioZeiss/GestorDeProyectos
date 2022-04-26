class PagesController < ApplicationController
  def index
  end

  def crear
    Dbproject.create(name: params[:name], description: params[:description], timestart: params[:timeIni], timeend: params[:timeEnd], state: params[:state])
  end  


  def vista
    if ((params[:search].present?) && (params[:search]!='todos'))
      #Filtro
      @proyect=Dbproject.where('state=?',params[:search])
    else
      @proyect=Dbproject.all
    end
  end
end
