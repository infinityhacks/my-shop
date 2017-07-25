class CreateCategories < ActiveRecord::Migration[5.0]
  #分类表
  def change
    create_table :categories do |t|
      t.string :title
      #展示的时候会有优先级
      t.integer :weight, comment: "权重", default: 0
      t.integer :product_counter , comment: "分类下面产品的数量", default: 0
      t.timestamps
    end

    add_index :categories, [:title]
  end
end
