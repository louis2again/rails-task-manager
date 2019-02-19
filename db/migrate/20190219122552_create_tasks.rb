class CreateTasks < ActiveRecord::Migration[5.2]
  # 1 - Model
  # Generate the Task model through the right rails generator. It should have at
  # least the following columns:
  #
  # title, as a string
  # details, as a text
  # completed, as a boolean (default: false)
  # in command line ran:
  # rails generate model Task title:string details:text completed:boolean

  # 2 - run the migrate with comand rails db:migrate
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
