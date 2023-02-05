class CreateJob < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :type
      t.string :salary
      t.string :company
      t.string :domain
      t.string :jobcode
      t.string :skills
      t.date :posted_on
      t.timestamps
    end
  end
end
