Admin.create!([
  {email: "admin1@hotmail.com", encrypted_password: "$2a$11$ly40Af4fa7/.e0StKzeaPOXsSTwnsA4yG3fi19yZL2iJuBXMpsReC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 124, current_sign_in_at: "2017-08-10 15:47:12", last_sign_in_at: "2017-08-10 15:38:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "admin1", uid: nil, provider: nil},
  {email: "admin2@hotmail.com", encrypted_password: "$2a$11$PwBFnNmM0lr3EjyE5S1H5.Yk.zZ7iZSIjbyw4RuKbiWnEbqRCrF4W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2017-08-08 21:15:42", last_sign_in_at: "2017-07-26 13:50:23", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "admin2", uid: nil, provider: nil}
])
User.create!([
  {email: "arturo1@hotmail.com", encrypted_password: "$2a$11$Ej45peCI6LMj6nmsd1lnXu4QWYuF6eAL.ltYYnu/rmKem1Cffm0NW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 51, current_sign_in_at: "2017-08-10 15:38:35", last_sign_in_at: "2017-08-10 15:34:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Irving", firs_last_name: "Diaz", second_last_name: "Ordas", phone: "222 123 45 67", semester: 7, graduation_year: 2019, uid: nil, provider: nil, sexo: "Masculino", disponible_en: "2017-09-03", university: 1, duration_internship: 5, level_english: 80, interest_area1: 1, interest_area2: 3, interest_area3: 2, estado_residencia: 17, birthdate: "1991-04-15", carrer: 3, status: 1, CV_file_name: "NewResumeArturoBravo.pdf", CV_content_type: "application/pdf", CV_file_size: 127599, CV_updated_at: "2017-08-07 12:51:41"},
  {email: "arturo.bravora@udlap.mx", encrypted_password: "$2a$11$fhmnw98eve/5V1erlQZdCO0bVifhCbbiys55dpj5sXUSpEPy3.YaG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 52, current_sign_in_at: "2017-08-10 14:03:53", last_sign_in_at: "2017-08-09 14:19:35", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Arturo", firs_last_name: "Bravo", second_last_name: "Rovirosa", phone: "777 123 45 75", semester: 7, graduation_year: 2020, uid: nil, provider: nil, sexo: "Masculino", disponible_en: "2019-05-03", university: 1, duration_internship: 6, level_english: 100, interest_area1: 4, interest_area2: 2, interest_area3: 5, estado_residencia: 17, birthdate: "1996-05-29", carrer: 1, status: 1, CV_file_name: "NewResumeArturoBravo.pdf", CV_content_type: "application/pdf", CV_file_size: 127599, CV_updated_at: "2017-07-27 13:39:58"},
  {email: "arturo2@hotmail.com", encrypted_password: "$2a$11$ZEnq1M6i4e3HEUmWBZwHQuIOh9wxCfHEXWiYOuROdX657jU3TGvAe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2017-08-10 14:19:21", last_sign_in_at: "2017-08-09 15:40:56", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Alberto", firs_last_name: "Alvarez", second_last_name: "Soriano", phone: "222 345 48 57", semester: 8, graduation_year: 2019, uid: nil, provider: nil, sexo: "Masculino", disponible_en: "2017-12-01", university: 2, duration_internship: 6, level_english: 92, interest_area1: 2, interest_area2: 3, interest_area3: 5, estado_residencia: 1, birthdate: "1990-03-28", carrer: 4, status: 1, CV_file_name: "NewResumeArturoBravo.pdf", CV_content_type: "application/pdf", CV_file_size: 127599, CV_updated_at: "2017-08-08 15:30:30"}
])
Evaluation.create!([
  {admin_id: 1, comments: "Es un buen muchacho, muy trabajador, le gusta programar hasta tarde, le hes dificil trabajar en equipo, ha hecho aplicaciones moviles y web, le encanta leer y ver peliculas.", user_id: 2, candidato_potencial: true, english_level: 100, technical_skills: "Ruby on Rails\r\nIonic\r\nPython\r\nC#\r\nJava\r\nJust in mind (prototype apps)\r\nUnity 3D\r\n", duration_training: "6 months", rank_global_candidate: 4}
])
Notification.create!([
  {admin_id: 2, item_type: "VacanteAplicada", item_id: 13, viewed: true},
  {admin_id: 2, item_type: "VacanteAplicada", item_id: 14, viewed: true},
  {admin_id: 2, item_type: "VacanteAplicada", item_id: 15, viewed: true},
  {admin_id: 1, item_type: "VacanteAplicada", item_id: 16, viewed: true},
  {admin_id: 1, item_type: "VacanteAplicada", item_id: 17, viewed: true},
  {admin_id: 1, item_type: "VacanteAplicada", item_id: 18, viewed: true},
  {admin_id: 1, item_type: "VacanteAplicada", item_id: 28, viewed: false},
  {admin_id: 1, item_type: "VacanteAplicada", item_id: 29, viewed: false},
  {admin_id: 2, item_type: "VacanteAplicada", item_id: 30, viewed: false},
  {admin_id: 1, item_type: "VacanteAplicada", item_id: 31, viewed: false}
])
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
Vacante.create!([
  {name: "MATERIAL PLANNER", location: "Mexico - Puebla", missions_role: "Build up the Procurement Program by dividing and leveling piece procurements\r\n\r\nFollow up the Procurement Program realization by managing alert systems and follow the unloading, receipt and transportation of pieces.\r\n\r\nFollow supplier delivery performance (supplier Misdeliveries Per Million) and the service of logistics partners and propose appropriate improvement action plans.", occupied: false, admin_id: 2, area: 4, description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for technical perfection and our passion for all things automotive, Faurecia has a career for you.\r\n\"Faurecia, a driving force…for your professional growth", periodo_de_practica: "Ene-Jun", little_description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for technical...", Name_Hiring_Manager: "Daniel Gonzalez Mendez", job_area_id: nil, planta: nil},
  {name: "DEVELOPMENT ENGINEER", location: "Mexico - Puebla - Puebla", missions_role: "Interface with the customer's engineering team.\r\n\r\nApply Faurecia industrial policies and guidelines (Production System Efficiency, Supply chain, Ergonomy,…).\r\n\r\nLiaise with industrial engineer so that product and process characteristics are under control when production is launched.\r\n\r\n(May) manage a team of functional-product design engineer(s) and/or process/tool engineers.", occupied: false, admin_id: 1, area: 1, description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for technical perfection and our passion for all things automotive, Faurecia has a career for you.\r\n\"Faurecia, a driving force…for your professional growth", periodo_de_practica: "Ene-Jun", little_description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents.", Name_Hiring_Manager: "Sandy Hernandez Diaz", job_area_id: nil, planta: 2},
  {name: "SHIPPING SUPERVISOR", location: " Mexico - Queretaro de Arteaga", missions_role: "Conduct the implementation of logistics basics: booking operations, traceability, labelling, container management, etc.\r\n\r\nMonitor visual management system: deploy visual First In First Out (FIFO) and install physical alert systems. \r\n\r\nOrganise equiptment and human resources. \r\n\r\nLook for productivity gains.\r\n\r\nManage, train and coach logistics operators team.", occupied: false, admin_id: 1, area: 3, description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for technical perfection and our passion for all things automotive, Faurecia has a career for you.\r\n\"Faurecia, a driving force…for your professional growth.", periodo_de_practica: "Jul-Dic", little_description: "Ensure customer delivery: feed and monitor the sequencer, supervise preparation and loading of finished products into trucks, track shipments, communicate all shipment failures, implement customer Misdeliveries per Million (MPM)...", Name_Hiring_Manager: "Fernando Dublin Velazquez", job_area_id: nil, planta: 1},
  {name: "PROCESS ENGINEER", location: "Mexico - Queretaro de Arteaga", missions_role: "Manage the product interface with product development\r\n\r\nContribute to the Engineering Change Management process\r\n\r\nSupport continuous improvement & production\r\n\r\nParticipate to the Manufacturing Engineering network\r\n", occupied: false, admin_id: 1, area: 1, description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for technical perfection and our passion for all things automotive, Faurecia has a career for you.\r\n\"Faurecia, a driving force…for your professional growth.", periodo_de_practica: "Ene-Jun", little_description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for...", Name_Hiring_Manager: "Hector Bahena Delgado", job_area_id: nil, planta: 6},
  {name: "DIGITAL TRANSFORMATION BUSINESS ANALYST", location: "Mexico - Puebla - Puebla", missions_role: "Act as internal Digital Transformation (DT) expert for the GIS function in Mexico.\r\n\r\n-   Ensuring project deliverables are meet successfully, on-time, and on budget.\r\n\r\n-     Ensuring Faurecia Project Management methodologies are followed, including delivery of supporting documentation.\r\n\r\n-     Coordinate with other GIS Teams in the administration to support new DT launch activities.", occupied: false, admin_id: 2, area: 2, description: "The Digital Transformation Business Analyst is responsible for the support, design and development of the Faurecia Digital Transformation initiatives in Mexico, following the direction established by the Faurecia Digital Transformation Governance Teams.<?xml:namespace prefix = \"o\" ns = \"urn:schemas-microsoft-com:office:office\" />\r\n\r\nPromote the Link and/or integration between the plant, DE Champions, developers and governance and pursuing overall service and quality improvements in deployment of DT initiatives at the sites.", periodo_de_practica: "Jul-Dic", little_description: "The Digital Transformation Business Analyst is responsible for the support, design and development of the Faurecia Digital Transformation initiatives in Mexico, following the direction established by the Faurecia Digital...", Name_Hiring_Manager: "Daniela Cincol Tedono", job_area_id: nil, planta: 11},
  {name: "JUNIOR HUMAN RESOURCES SPECIALIST", location: "Mexico - San Luis Potosi - San Luis Potosi", missions_role: "Assist the HR Manager in personnel administration, follow-up of group HR policies and staffing issues\r\n\r\nElaborate, manage and follow the organization training plan according to a needs analysis\r\n\r\nOrganize, monitor and evaluate training programs to enhance training efficiency\r\n\r\nAnticipate and assess potential learning needs and propose adequate trainings", occupied: true, admin_id: 1, area: 4, description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for technical perfection and our passion for all things automotive, Faurecia has a career for you.\r\n\"Faurecia, a driving force…for your professional growth.", periodo_de_practica: "Ene-Jun", little_description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents.", Name_Hiring_Manager: "Ernesto Bautista Roldan", job_area_id: nil, planta: 10},
  {name: "FES&PRODUCTIVITY MANAGER", location: "Mexico - San Luis Potosi - San Luis Potosi", missions_role: "FES Principles and Standards: Managers ensure the correct daily usage of the FES standards; FES Specialists ensure FES standards are used.\r\n\r\nVerify if FES Principles are applied in Programs from design stage.\r\n\r\nPropose and promote best practices both within the Division and the Group.\r\n", occupied: false, admin_id: 1, area: 4, description: "Technical Perfection and automotive passion\" is what defines Faurecia. We design, engineer and provide the best in technology, systems and services for automobile makers in every major market on all five continents. If you share our ambition for technical perfection and our passion for all things automotive, Faurecia has a career for you.\r\n\"Faurecia, a driving force…for your professional growth.", periodo_de_practica: "Ene-Jun", little_description: "The FES&Productivity Manager reports to the Operations Director and liaises with Group Experts to ensure their own knowledg of Group Standards and best practices is developed.", Name_Hiring_Manager: "Fernando Gonzalez Brito", job_area_id: nil, planta: 2}
])
VacanteAplicada.create!([
  {vacante_id: 20, user_id: 3, status: 1},
  {vacante_id: 19, user_id: 2, status: 1},
  {vacante_id: 21, user_id: 2, status: 1},
  {vacante_id: 23, user_id: 3, status: 1},
  {vacante_id: 23, user_id: 2, status: 1},
  {vacante_id: 23, user_id: 1, status: 1},
  {vacante_id: 22, user_id: 3, status: 1},
  {vacante_id: 21, user_id: 3, status: 1}
])
