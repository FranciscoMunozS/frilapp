class CreateObservations < ActiveRecord::Migration[5.1]
  def change
    create_table :observations do |t|
     t.string  :action_plan
     t.string  :office_observation
     t.date    :office_date
     t.date    :due_date
     t.string  :responsible
     t.boolean :meet
     t.string  :office_breach
     t.date    :breach_date
     t.string  :term_second
     t.string  :responsible_second
     t.boolean :meet_second
     t.integer :project_id

      t.timestamps
    end
  end
end
