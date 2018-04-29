class CreateAccessLogTools < ActiveRecord::Migration[5.0]
  def change
    create_table :access_log_tools, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.datetime :time_s
      t.datetime :time_e
      t.integer :status
      t.string :status_comment
      t.string :status_comment2
      t.string :status_comment3
      t.string :remote_addr
      t.string :useragent
      t.string :program_name
      t.string :input1
      t.string :input2
      t.string :input3
      t.string :input4
      t.string :input5

      t.timestamps
    end
  end
end
