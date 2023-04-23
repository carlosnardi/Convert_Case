class CreateTextConverters < ActiveRecord::Migration[7.0]
  def change
    create_table :text_converters do |t|

      t.timestamps
    end
  end
end
