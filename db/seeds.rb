
TC::Carrer.create!([
  {carrera: "Ingenieria en Sistemas Computacionales"},
  {carrera: "Ingenieria en Logistica"},
  {carrera: "Administracion de empresas"},
  {carrera: "Banca e Inversiones"},
  {carrera: "Mercadotecnia"}
])
TC::Estado.create!([
  {estado: "Aguascalientes"},
  {estado: "Baja California"},
  {estado: "Baja California Sur"},
  {estado: "Campeche"},
  {estado: "Coahuila"},
  {estado: "Colima"},
  {estado: "Chiapas"},
  {estado: "Chihuahua"},
  {estado: "Distrito Federal"},
  {estado: "Durango"},
  {estado: "Guanajuato"},
  {estado: "Guerrero"},
  {estado: "Hidalgo"},
  {estado: "Jalisco"},
  {estado: "México"},
  {estado: "Michoacán"},
  {estado: "Morelos"},
  {estado: "Nayarit"},
  {estado: "Nuevo León"},
  {estado: "Oaxaca"},
  {estado: "Puebla"},
  {estado: "Querétaro"},
  {estado: "Quintana Roo"},
  {estado: "San Luis Potosí"},
  {estado: "Sinaloa"},
  {estado: "Sonora"},
  {estado: "Tabasco"},
  {estado: "Tabasco"},
  {estado: "Tamaulipas"},
  {estado: "Tlaxcala"},
  {estado: "Veracruz"},
  {estado: "Yucatán"},
  {estado: "Zacatecas"}
])
TC::Job_area.create!([
  {job_area: "Engineering"},
  {job_area: "Finance"},
  {job_area: "Marketing"},
  {job_area: "Operations"},
  {job_area: "Information Tecnology"}
])
TC::Plant.create!([
  {planta: "Frames"},
  {planta: "Mechanism"},
  {planta: "Saltillo"},
  {planta: "C&S"},
  {planta: "JIT"},
  {planta: "Queretaro South"},
  {planta: "Silao"},
  {planta: "Hermosillo"},
  {planta: "Queretaro North"},
  {planta: "RBU"},
  {planta: "HHQ"}
])
TC::R1_12_range.create!([
  {rango: 1},
  {rango: 2},
  {rango: 3},
  {rango: 4},
  {rango: 5},
  {rango: 6},
  {rango: 7},
  {rango: 8},
  {rango: 9},
  {rango: 10},
  {rango: 11},
  {rango: 12}
])
TC::Rank_candidate.create!([
  {rank: "Not approved"},
  {rank: "Good"},
  {rank: "Very good"},
  {rank: "Excellent"}
])
TC::Status.create!([
  {status: "Disponible"},
  {status: "En proceso"},
  {status: "Contratado"},
  {status: "Rechazado"}
])
TC::University.create!([
  {universidad: "UDLAP"},
  {universidad: "UPAEP"},
  {universidad: "Tec de Monterrey Pueba"},
  {universidad: "BUAP"},
  {universidad: "IBERO"}
])
