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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110826152101) do

  create_table "alte_analizes", :force => true do |t|
    t.string   "nume"
    t.float    "valuare"
    t.string   "unitate_masura"
    t.integer  "evaluare_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alte_analizes", ["evaluare_id"], :name => "index_alte_analizes_on_evaluare_id"

  create_table "evaluares", :force => true do |t|
    t.date     "data"
    t.text     "diagnostice"
    t.float    "uree"
    t.float    "creatinina"
    t.float    "tgo"
    t.float    "tgp"
    t.float    "fosfataza_alcalina"
    t.float    "calciu"
    t.float    "fosfor"
    t.float    "albumina"
    t.float    "leucocite_sange"
    t.float    "hemoglobina"
    t.float    "hematocrit"
    t.float    "plachete"
    t.float    "glicemie"
    t.float    "sodiu"
    t.float    "potasiu"
    t.integer  "gucoza_urina"
    t.integer  "proteina_urina"
    t.integer  "leucocite_urina"
    t.boolean  "nitriti"
    t.string   "germeni"
    t.float    "raport_a_c"
    t.float    "microalb"
    t.float    "bicarb"
    t.float    "colesterol"
    t.float    "trigliceride"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluares", ["pacient_id"], :name => "index_evaluares_on_pacient_id"

  create_table "medicamentes", :force => true do |t|
    t.string   "clasa"
    t.string   "nume"
    t.integer  "interval"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "doza"
    t.string   "dci"
    t.string   "compensare"
    t.string   "diagnostic"
  end

  create_table "pacients", :force => true do |t|
    t.string   "nume"
    t.string   "prenume"
    t.integer  "cnp"
    t.date     "debut_diabet"
    t.string   "focad"
    t.text     "adresa"
    t.integer  "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reteta", :force => true do |t|
    t.date     "data"
    t.integer  "cantitate"
    t.integer  "serie"
    t.integer  "pacient_id"
    t.integer  "medicamente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reteta", ["medicamente_id"], :name => "index_reteta_on_medicamente_id"
  add_index "reteta", ["pacient_id"], :name => "index_reteta_on_pacient_id"

end
