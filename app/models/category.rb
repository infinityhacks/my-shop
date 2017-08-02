class Category < ApplicationRecord

  #因为category模型要用到ancestry，需要配置一下 -> has_ancestry
  has_ancestry

  has_many :products, dependent: :destroy #如果这个某个分类被删除，分类下的所有类也要删除,级联删除



end
