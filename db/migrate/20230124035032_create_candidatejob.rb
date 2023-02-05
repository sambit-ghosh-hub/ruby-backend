class CreateCandidatejob < ActiveRecord::Migration[7.0]
  def change
    create_table :candidatejobs do |t|

      t.string :jobcode
      t.string :applicationstatus
      t.string :appliedon
      t.timestamps
    end
  end
end
