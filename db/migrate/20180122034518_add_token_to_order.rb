class AddTokenToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :order, :token, :string
  end
end
