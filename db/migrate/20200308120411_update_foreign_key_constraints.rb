class UpdateForeignKeyConstraints < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :entries, :remedies
    remove_foreign_key :entries, :categories
    add_foreign_key :entries, :remedies, on_delete: :cascade
    add_foreign_key :entries, :categories, on_delete: :cascade
  end
end
