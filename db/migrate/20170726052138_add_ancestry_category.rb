class AddAncestryCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :ancestry, :string #利用这个字段配置上下级的所属关系

    add_index :categories, [:ancestry]
  end
end
