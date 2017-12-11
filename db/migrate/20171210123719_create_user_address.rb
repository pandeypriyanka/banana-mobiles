class CreateUserAddress < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.integer  "user_id"
      t.text     "address_line1"
      t.text     "address_line2"
      t.string   "city"
      t.string   "state"
      t.string   "postal_code"
      t.string   "phone"
      t.string   "country",  :limit => 2
      t.boolean  "deleted",  :default => false
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false

    end
  end
end
