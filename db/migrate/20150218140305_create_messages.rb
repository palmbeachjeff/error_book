class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.references :user, index: true
      t.boolean :resolved

      t.timestamps
    end
  end
end
