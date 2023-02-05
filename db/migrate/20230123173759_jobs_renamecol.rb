class JobsRenamecol < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :type, :jobtype
  end
end
