class RemediesNameNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :remedies, :name, false
  end
end
