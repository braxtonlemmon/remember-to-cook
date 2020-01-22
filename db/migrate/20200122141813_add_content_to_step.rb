class AddContentToStep < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :step, :string
  end
end
