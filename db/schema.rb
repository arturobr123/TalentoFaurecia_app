# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170908134908) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "answer_questions", force: :cascade do |t|
    t.boolean  "respuesta"
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "questions_first_filter_id"
    t.index ["questions_first_filter_id"], name: "index_answer_questions_on_questions_first_filter_id"
    t.index ["user_id"], name: "index_answer_questions_on_user_id"
  end

  create_table "carrers", force: :cascade do |t|
    t.text "carrera"
  end

  create_table "estados", force: :cascade do |t|
    t. "estado", null: false
  end

  create_table "evaluation_hiring_managers", force: :cascade do |t|
    t.integer  "learning_on_the_fly_select"
    t.text     "learning_on_the_fly_justification"
    t.integer  "problem_solving_select"
    t.text     "problem_solving_justification"
    t.integer  "customer_focus_select"
    t.text     "customer_focus_justification"
    t.integer  "priority_setting_select"
    t.text     "priority_setting_justification"
    t.integer  "personal_learning_select"
    t.text     "personal_learning_justification"
    t.integer  "integrity_and_trust_select"
    t.text     "integrity_and_trust_justification"
    t.integer  "entrepreneurship_select"
    t.text     "entrepreneurship_justification"
    t.integer  "autonomy_select"
    t.text     "autonomy_justification"
    t.integer  "accountability_select"
    t.text     "accountability_justification"
    t.integer  "energy_select"
    t.text     "energy_justification"
    t.integer  "respect_select"
    t.text     "respect_justification"
    t.integer  "exemplarity_select"
    t.text     "exemplarity_justification"
    t.text     "assigned_project"
    t.integer  "project_realization"
    t.integer  "overall_performance"
    t.integer  "future_position_option1"
    t.integer  "future_position_option2"
    t.integer  "future_position_option3"
    t.boolean  "mobility_of_intern_afer_assignment"
    t.text     "mobility_of_intern_afer_assignment_where"
    t.text     "aditional_comments"
    t.boolean  "i_recommend_this_candidate_for_inmediate_contract_with_the_company"
    t.text     "i_recommend_this_candidate_for_inmediate_contract_with_the_company_why"
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
    t.integer  "admin_id"
    t.integer  "user_id"
    t.text     "name_hiring_manager"
    t.index ["admin_id"], name: "index_evaluation_hiring_managers_on_admin_id"
    t.index ["user_id"], name: "index_evaluation_hiring_managers_on_user_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer  "admin_id"
    t.text     "comments"
    t.integer  "user_id"
    t.boolean  "candidato_potencial"
    t.integer  "english_level"
    t.text     "technical_skills"
    t.string   "duration_training"
    t.integer  "rank_global_candidate"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["admin_id"], name: "index_evaluations_on_admin_id"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "job_areas", force: :cascade do |t|
    t.text "job_area", null: false
  end

  create_table "months", force: :cascade do |t|
    t.text "mes", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "admin_id"
    t.string   "item_type"
    t.integer  "item_id"
    t.boolean  "viewed",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["admin_id"], name: "index_notifications_on_admin_id"
    t.index ["item_type", "item_id"], name: "index_notifications_on_item_type_and_item_id"
  end

  create_table "plants", force: :cascade do |t|
    t.text "planta", null: false
  end

  create_table "questions_first_filters", force: :cascade do |t|
    t.text     "pregunta"
    t.text     "respuesta1"
    t.text     "respuesta2"
    t.text     "respuesta3"
    t.text     "respuesta4"
    t.text     "respuesta_correcta"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "r1_12_ranges", force: :cascade do |t|
    t.integer "rango", null: false
  end

  create_table "rank_candidates", force: :cascade do |t|
    t. "rank", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.text "status", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.text "universidad", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "firs_last_name"
    t.string   "second_last_name"
    t.text     "phone"
    t.integer  "semester"
    t.integer  "graduation_year"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "sexo"
    t.date     "disponible_en"
    t.integer  "university"
    t.integer  "duration_internship"
    t.integer  "level_english"
    t.integer  "interest_area1"
    t.integer  "interest_area2"
    t.integer  "interest_area3"
    t.integer  "estado_residencia"
    t.date     "birthdate"
    t.integer  "carrer"
    t.integer  "status",                 default: 1
    t.string   "CV_file_name"
    t.string   "CV_content_type"
    t.integer  "CV_file_size"
    t.datetime "CV_updated_at"
    t.boolean  "game_finished",          default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacante_aplicadas", force: :cascade do |t|
    t.integer  "vacante_id"
    t.integer  "user_id"
    t.integer  "status",     default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_vacante_aplicadas_on_user_id"
    t.index ["vacante_id"], name: "index_vacante_aplicadas_on_vacante_id"
  end

  create_table "vacantes", force: :cascade do |t|
    t.text     "name"
    t.text     "location"
    t.text     "missions_role"
    t.boolean  "occupied"
    t.integer  "admin_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "area"
    t.text     "description"
    t.text     "periodo_de_practica"
    t.text     "little_description"
    t.text     "Name_Hiring_Manager"
    t.integer  "job_area_id"
    t.integer  "planta"
    t.integer  "mes_inicio"
    t.integer  "mes_fin"
    t.index ["admin_id"], name: "index_vacantes_on_admin_id"
    t.index ["job_area_id"], name: "index_vacantes_on_job_area_id"
  end

end
