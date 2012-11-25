class CreateSurvey1s < ActiveRecord::Migration
  def change
    create_table :survey1s do |t|
      t.string :answer
      t.datetime :time

      t.timestamps
    end
  end
end
