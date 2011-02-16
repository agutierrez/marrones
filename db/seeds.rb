Technician.delete_all
Technician.create([{ :name => "Agustin", :technician_id => 1 },
                   { :name => "Arsenio", :technician_id => 2 },
                   { :name => "Ibon", :technician_id => 3 },
                   { :name => "Jose", :technician_id => 4 },
                   { :name => "Miguel", :technician_id => 5 },
                   { :name => "Managing", :technician_id => 6 }])

Status.delete_all
Status.create([{ :status_id => 1, :name => "espera"},
               { :status_id => 2, :name => "proceso"},
               { :status_id => 3, :name => "terminado"},
               { :status_id => 4, :name => "entregado"},
               { :status_id => 5, :name => "externo"},])