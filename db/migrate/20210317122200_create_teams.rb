class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string     :name,           null: false
      t.integer    :city_id,        null: false
      t.text       :message,        null: false
      t.text       :representative, null: false
      t.string     :email,          null: false
      t.references :user,           foreign_key: true

      t.timestamps
    end
  end
end
