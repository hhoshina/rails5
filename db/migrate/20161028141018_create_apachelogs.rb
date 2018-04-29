class CreateApachelogs < ActiveRecord::Migration[5.0]
  def change
    create_table :apachelogs, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :ipadress
      t.datetime :time
      t.text :method
      t.integer :status
      t.string :bite
      t.text :url
      t.text :useragent

      t.timestamps
    end
  end
end
