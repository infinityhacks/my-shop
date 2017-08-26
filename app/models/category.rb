class Category < ApplicationRecord

  validates :title, presence: { message: "名称不能为空"}
  validates :title, uniqueness: { message: "名称不能重复"}

  #因为category模型要用到ancestry，需要配置一下 -> has_ancestry
  #如果删除了一级分类，二级分类也删除掉。orphan_strategy: :destroy
  has_ancestry orphan_strategy: :destroy

  has_many :products, dependent: :destroy #如果这个某个分类被删除，分类下的所有类也要删除,级联删除

  before_validation :correct_ancestry

  def self.groupend_data
    self.roots.order("weight desc").inject([]) do |result,  parent|
      row = []
      row << parent
      row << parent.children.order("weight desc")
      result << row
    end
  end

  private
  def correct_ancestry
    self.ancestry = nil if self.ancestry.blank?
  end

end
