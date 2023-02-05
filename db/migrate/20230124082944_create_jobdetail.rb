class CreateJobdetail < ActiveRecord::Migration[7.0]
  def change
    create_table :jobdetails do |t|
      t.string :jobtitle
      t.string :jobdescription
      t.string :companyname
      t.string :jobtype
      t.string :location
      t.integer :salary
      t.date :posteddate
      t.string :domain
      t.string :jobCode
      t.string :skillsRequired
      t.string :applicationStatus
      t.timestamps
    end
  end
end
