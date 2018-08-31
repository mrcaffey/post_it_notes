def index
  @pages = Page.all
end

def show 
  @page = Page.find(params[:id])
end

def new 
  @page = Page.new
end

def create
  @page = Page.new(pages_params)

  if @page.save
    redirect_to pages_path
  else
    render :new
  end
end

def edit
  @page = Page.find(params[:id])
end

def update
  @page = Page.find(params[:id])

  if @page.update(page_params)
    redirect_to pages_path
  else
    render :edit
  end
end

private 

def pages_params
  params.require(:page).permit(:title, :author, :body)
end

