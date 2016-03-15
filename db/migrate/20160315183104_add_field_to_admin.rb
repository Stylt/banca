class AddFieldToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :job, :string
  end
end
