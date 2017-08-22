class Admin::CategoriesController < Admin::BaseController

  def index
    @categories = Category.roots.page(params[:page] || 1).per_page(params[:per_page] || 10).order(id: "desc")
  end

  def new
    @category = Category.new
    @root_categories = Category.roots.order(id: "desc")
  end

  def create
    @category = Category.new(params.require(:category).permit!)
    @root_categories = Category.roots.order(id: "desc")

    if @category.save
      flash[:notice] = "保存成功"
      redirect_to admin_categories_path
    else
      render action: :new
    end
  end

  def edit
    @category = Category.find(params[:id])
    @root_categories = Category.roots.order(id: "desc")
    render action: :new
  end

  def update
    @category = Category.find params[:id]
    @category.attributes = params.require(:category).permit!
    if @category.save
      flash[:notice] = "修改成功"
      redirect_to admin_categories_path
    else
      render action: :new
    end

  end

end
