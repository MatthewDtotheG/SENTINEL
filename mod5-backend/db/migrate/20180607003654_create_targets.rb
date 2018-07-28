class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.text :browser
      t.text :mobile
      t.text :laptop
      t.text :desktop
      t.text :ip
      t.text :isp
      t.text :city
      t.text :country_code
      t.text :country_name
      t.text :district
      t.text :timezone_name
      t.text :postal_code
      t.text :currency_code
      t.integer :website_id

      t.timestamps
    end
  end
end
