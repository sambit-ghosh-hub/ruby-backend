class CandidateappRenamecols < ActiveRecord::Migration[7.0]
  def change
    rename_column :candidateapplications, :userId, :userid
    rename_column :candidateapplications, :appliedDate, :applieddate
    rename_column :candidateapplications, :candidateApplicationStatus, :candidateapplicationstatus
    add_column :candidateapplications, :jobid, :integer
  end
end
