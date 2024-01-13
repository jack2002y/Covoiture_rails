class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.references :trajet_conducteur, null: false, foreign_key: true
      t.references :trajet_utilisateur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
