class LotsController < ApplicationController
  def show
    @categories = Category.all
    @lot = Lot.find params[:id]
  end

  def new
    @categories = Category.all
    @lot = Lot.new
  end

  def create
    @lot = Lot.new lot_params
    @lot.update(image_url: upload)
    if @lot.save
      redirect_to @lot
    else
      # приходится пробрасывать категории для меню
      @categories = Category.all
      render 'new'
    end
  end

  private

  def lot_params
    params.require(:lot).permit(:name, :description, :start_price, :bet_step, :finish_date, :category_id, :image_url)
  end

  def upload
    uploaded_io = params[:lot][:image_url]
    file_name = SecureRandom.uuid + '.' + Mime::Type.lookup(uploaded_io.content_type).symbol.to_s
    file_path = Rails.root.join('public', 'uploads', file_name)

    unless File.exist?(File.dirname(file_path))
      FileUtils.mkdir_p(File.dirname(file_path))
    end

    File.open(file_path, 'wb') do |file|
      file.write(uploaded_io.read)
    end

    "/uploads/#{file_name}"
  end
end
