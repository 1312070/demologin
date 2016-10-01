class CreateTblusers < ActiveRecord::Migration[5.0]
  def change
    create_table :tblusers do |t|
      t.string :username
      t.string :password
    end
  end
end
