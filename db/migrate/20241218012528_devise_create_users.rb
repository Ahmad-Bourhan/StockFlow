class DeviseCreateUsers < ActiveRecord::Migration[7.2]
  def change
    unless table_exists?(:users)  # تحقق من وجود الجدول أولاً
      create_table :users do |t|  # إذا لم يكن موجودًا، قم بإنشائه
        t.string :email,              null: false, default: ""
        t.string :encrypted_password, null: false, default: ""
        t.string :password_reset_token
        t.datetime :password_reset_sent_at
        t.integer :sign_in_count, default: 0, null: false
        t.datetime :current_sign_in_at
        t.datetime :last_sign_in_at
        t.string :current_sign_in_ip
        t.string :last_sign_in_ip
        t.datetime :remember_created_at
        t.string :first_name
        t.string :last_name

        t.timestamps null: false
      end
    end
  end
end
