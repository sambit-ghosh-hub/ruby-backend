class CandidatejobAddcol < ActiveRecord::Migration[7.0]
  def change
    add_column :candidatejobs, :candidateid, :integer
  end
end
