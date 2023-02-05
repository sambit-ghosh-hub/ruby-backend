class CreateCandidateprofile < ActiveRecord::Migration[7.0]
  def change
    create_table :candidateprofiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :contact
      t.string :address
      t.string :about
      t.string :profilepic
      t.string :company
      t.integer :ctc
      t.integer :experience
      t.string :role
      t.string :skills
      t.string :resumelink
      t.integer :expectedsalary
      t.string :preferedlocation
      t.timestamps
    end
  end
end
