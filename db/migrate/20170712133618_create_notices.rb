class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
