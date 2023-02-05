# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_25_175444) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidateapplications", force: :cascade do |t|
    t.integer "userid"
    t.string "jobcode"
    t.date "applieddate"
    t.string "candidateapplicationstatus"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "jobid"
  end

  create_table "candidatejobs", force: :cascade do |t|
    t.string "jobcode"
    t.string "applicationstatus"
    t.string "appliedon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "candidateid"
  end

  create_table "candidateprofiles", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "contact"
    t.string "address"
    t.string "about"
    t.string "profilepic"
    t.string "company"
    t.integer "ctc"
    t.integer "experience"
    t.string "role"
    t.string "skills"
    t.string "resumelink"
    t.integer "expectedsalary"
    t.string "preferedlocation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobdetails", force: :cascade do |t|
    t.string "jobtitle"
    t.string "jobdescription"
    t.string "companyname"
    t.string "jobtype"
    t.string "location"
    t.integer "salary"
    t.date "posteddate"
    t.string "domain"
    t.string "jobcode"
    t.string "skillsrequired"
    t.string "applicationstatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "location"
    t.string "jobtype"
    t.string "salary"
    t.string "company"
    t.string "domain"
    t.string "jobcode"
    t.string "skills"
    t.date "posted_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
