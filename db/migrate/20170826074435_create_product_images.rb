class CreateProductImages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_images do |t|
      t.belongs_to :product
      t.integer :weight, default: 0
      t.attachment :image #这句话，paperclip 会自动帮我们生成4个字段，都是image开头的，会保存图片的大小，尺寸，名称等,创建好的这几个字段使用的时候我们是不需要关心的，paperclip会帮我们自动维护
      t.timestamps
    end
  end
end
