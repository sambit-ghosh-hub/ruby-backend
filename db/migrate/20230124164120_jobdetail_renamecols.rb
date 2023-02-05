class JobdetailRenamecols < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobdetails, :skillsRequired, :skillsrequired
    rename_column :jobdetails, :applicationStatus, :applicationstatus
  end
end
