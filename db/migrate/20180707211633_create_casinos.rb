class CreateCasinos < ActiveRecord::Migration[5.2]
  def change
    create_table :casinos do |t|
      t.string :nombre
      t.string :tipocomida
      t.string :rangoprecio
      t.string :ubicacion

      t.timestamps
    end
  end
end
