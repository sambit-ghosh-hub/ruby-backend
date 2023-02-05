class JobdetailRenamecol < ActiveRecord::Migration[7.0]
  def change

    rename_column :jobdetails, :jobCode, :jobcode
  end
end
