class CreateCandidateapplication < ActiveRecord::Migration[7.0]
  def change
    create_table :candidateapplications do |t|

      t.integer :userId
      t.string :jobcode
      t.date :appliedDate
      t.string :candidateApplicationStatus
      t.string :location
      t.timestamps
    end
  end
end
