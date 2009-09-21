# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090918150221) do

  create_table "caches", :force => true do |t|
    t.integer  "cid"
    t.integer  "wid_id"
    t.integer  "updatetime"
    t.text     "graph"
    t.string   "timeperiod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caches", ["updatetime"], :name => "index_caches_on_updatetime"
  add_index "caches", ["wid_id"], :name => "index_caches_on_wid_id"

  create_table "links", :force => true do |t|
    t.integer  "fid_id"
    t.string   "title"
    t.integer  "score"
    t.integer  "num_comments"
    t.integer  "ups"
    t.integer  "created"
    t.integer  "downs"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["created"], :name => "index_links_on_created"
  add_index "links", ["fid_id"], :name => "index_links_on_fid_id"

  create_table "wordmatches", :force => true do |t|
    t.string   "fid"
    t.integer  "wid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wordmatches", ["fid"], :name => "index_wordmatches_on_fid"
  add_index "wordmatches", ["wid_id"], :name => "index_wordmatches_on_wid_id"

  create_table "words", :force => true do |t|
    t.integer  "wid"
    t.string   "word"
    t.integer  "freq"
    t.integer  "weekfreq"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["freq"], :name => "index_words_on_freq"
  add_index "words", ["weekfreq"], :name => "index_words_on_weekfreq"
  add_index "words", ["wid"], :name => "index_words_on_wid"

end
