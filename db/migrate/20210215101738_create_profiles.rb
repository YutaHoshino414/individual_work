class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      
      t.string  :username, null: false, default:""
      t.string  :first_name, null: false, default:""
      t.string  :last_name, null: false, default:""
      t.string  :first_name_kana, null: false, default:""
      t.string  :last_name_kana, null: false, default:""
      t.date    :birthday
      t.integer :sex, null: false, default: 0
      t.integer :body_length, null: false, default: 0
      t.text    :introduction
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
