class CreateSurvey1s < ActiveRecord::Migration
  def change
    create_table :survey1s do |t|
      t.string :title
      t.string :question
      t.datetime :time
      t.string :option1
      t.string :option2
      t.string :pic1
      t.string :pic2

      t.timestamps
    end
  end
end
