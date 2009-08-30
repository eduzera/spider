class VehiclesController < ApplicationController
  active_scaffold :vehicle do |item|
    item.label = "Carros Anunciados"
    item.columns =  [:car, :type_vehicle, :year, :model, :amount, :km, :doors, :color, :fuel, :gear]
    item.columns[:car].label = "Marca / Modelo"
    item.columns[:car].form_ui = :select
    item.columns[:type_vehicle].label = "Tipo"
    item.columns[:year].label = "Ano"
    item.columns[:model].label = "Modelo"
    item.columns[:amount].label = "Valor"
    item.columns[:km].label = "Km"
    item.columns[:doors].label = "Portas"
    item.columns[:finale].label = "Final"
    item.columns[:color].label = "Cor"
    item.columns[:color].form_ui = :select
    item.columns[:fuel].label = "Combustível"
    item.columns[:fuel].form_ui = :select
    item.columns[:gear].label = "Câmbio"
    item.columns[:gear].form_ui = :select
    item.columns[:option].form_ui = :select
    item.columns[:type_vehicle].form_ui = :select
    item.columns[:created_at].label = "Criado em"

    # item.columns[:car].search_sql = 'cars.name'
    #item.columns[:car].search_sql = 'brands.name'
   # item.search.columns = [:car]#, :brand]
  
    item.create.columns.exclude :options_vehicle
    item.actions.exclude :nested
    item.create.columns = [:car, :year, :model, :amount, :km, :doors, :finale, :color, 
                     :fuel, :gear, :note, :option, :type_vehicle, :picture]
    # item.show.columns = [:car, :model, :year, :color, :fuel, :gear, 
       #                  :picture1, :picture2, :picture3, :picture4, :picture5, :picture6]
  end
end
