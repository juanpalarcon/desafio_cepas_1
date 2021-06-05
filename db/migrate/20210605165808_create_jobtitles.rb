class CreateJobtitles < ActiveRecord::Migration[5.2]
  def change
    create_table :jobtitles do |t|
      t.string :name

      t.timestamps
    end
  end
end
