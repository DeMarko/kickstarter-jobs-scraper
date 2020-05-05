require 'active_record'

db_config_file = File.open('db_config.yml')
db_config = YAML::load(db_config_file)
ActiveRecord::Base.establish_connection(db_config)

class CreateJobPostingsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :job_listings do |t|
      t.string :title
      t.string :location
      t.timestamps
    end
  end
end

CreateJobPostingsTable.migrate(:up)