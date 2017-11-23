class CreateAeronaves < ActiveRecord::Migration
  def change
    create_table :aeronaves do |t|
      t.string :Nome
      t.string :NumeroTripulantes
      t.string :Tamanho
      t.string :Numero
      t.string :Chassi
      t.string :QuantidadeHorasVoo
      t.string :QuantidadeMotor

      t.timestamps null: false
    end
  end
end
