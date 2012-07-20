class LinksController < ApplicationController

  def index
    @links = Link.all
  end
  
  def show
    @link = Link.find(params[:id].to_i)
  end

  def new
    @link = Link.new
  end
  
  def create
    @link = Link.find_by_original(params[:link][:original]) || Link.new(params[:link])
    respond_to do |format|
      if @link.new_record? && @link.save
        add_message( "Your shortened uRL is: #{@link.short_url}".html_safe )
        format.html { redirect_to @link }
        format.xml  { render :xml => @link,
                      :status => :created, :location => @link }
      elsif @link.valid?
        add_error ( "Link has already been created, here are it's details." )
        format.html { redirect_to @link }
      else
        format.html { render :action => "new",
                      :notice => 'Invalid URL.'}
        format.xml  { render :xml => @link.errors,
                      :status => :unprocessable_entity }
      end
    end
  end

  def go
    @link = Link.find_by_short(params[:short_url])
    if @link
      redirect_to @link.original
    else
      flash[:error] = "The short uRL '#{params[:short_url]}' does not exist."
      redirect_to root_path
    end
  end

end
