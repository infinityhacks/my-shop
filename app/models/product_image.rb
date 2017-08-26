class ProductImage < ApplicationRecord

  belongs_to :product


  #这几个方法都是paperclip给我们提供的
  #指定生成几张缩略图，small小图，middle中等大小的，big大图
  has_attached_file :image, styles: {
    small: '60^x60',
    middle: '200^x200',
    big: "960x"
  }
  #验证图片的类型
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  #限定图片大小
  validates_attachment_size :image, in: 0..5.megabytes


end
