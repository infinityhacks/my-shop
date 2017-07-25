class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :category_id, comment: "外键"
      t.string :title
      t.string :status, comment: "状态", default: "off"
      t.integer :amount, comment: "库存", default: 0
      t.string :uuid, comment: "序列号"
      t.decimal :msrp, comment: "市场建议零售价", precision: 10, scale: 2
      t.decimal :price, comment: "实际价格", precision: 10, scale: 2
      t.text :description, comment: "商品描述"
      t.timestamps
    end

    add_index :products, [:status, :category_id]
    add_index :products, [:category_id]
    add_index :products, [:uuid], unique: true
    add_index :products, [:title]
  end
end
