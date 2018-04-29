class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :file

      t.timestamps
    end
  end
end
