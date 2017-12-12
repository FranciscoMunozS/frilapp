class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string  :name
      t.string  :commune
      t.string  :origin_visit
      t.date    :date_visit
      t.string  :line
      t.string  :idi
      t.integer :visit_id
      t.string  :visit_booklet
      t.string  :report_made
      
      t.timestamps
    end
  end
end
