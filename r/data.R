library(tibble)

# Education

education <- tribble(
  ~institute, ~subject, ~where, ~year,
  "Faculdade de Engenharia Industrial - FEI", "Engineer's Degree, Electrical and Electronics Engineering", "São Paulo", "1986-1991",
  "Universidade Estadual de Campinas - UNICAMP", "Engineer's Degree, Clinical Engineering", "Campinas", "1994-1995",
  "Fundação Getulio Vargas - FGV", "Business Administration and Management, General", "Bauru", "1998-2000",
  "Universidade Estadual de Campinas - UNICAMP", "Engineer's Degree, Object Oriented Programing", "Campinas", "2003-2004"
)

# Qualification

qualific <- tribble(
  ~item,
  "Professional experienced in Software Development Projects, with many hours logged in projects using, traditional approach as well as Agile methodologies.",
  "Jira Cloud administrator and Kanban user.",
  "Learning R and Data Science.",
  "Passionate for automation of daily routine tasks.",
  "Experienced Instructor in training employees to use department tools and procedures.",
  "Strong international experience, has worked/studied abroad in Sweden, England and the USA.",
  "Familiar with working in multicultural overseas groups."
)


# Experience

experience <- tribble(
  ~company, ~job, ~date, ~desc,
  "DHL Supply Chain", "Senior Integration Specialist", "Feb 2018 – now", "Integration Analyst, responsible for attending mapping sessions with customers aiming to translate customers’
interface into WMS interface, discuss connection details and help providing cost estimations.",
  "DHL Supply Chain", "Senior Integration Specialist", "Feb 2018 – now", "Responsible for introducing a new way of managing software projects, for NORAM and LATAM regions, using Atlas-
sian Jira Management tool, help translating business requirements into stories and improving communication with
developers.",
  "DHL Supply Chain", "Senior Integration Specialist", "Feb 2018 – now", "Facilitator of a team of developers spread in Asia and Americas, managing scope, and time.",
  "Instituto de Pesquisas Eldorado", "Senior Software Engineer", "2015-2017", "Worked on a end to end project aimed to transfer Android certification process (Radio-Frequency, Safety and Radiation Absorption) from Motorola US to Lenovo headquarters in Asia.",
  "Ericsson Telecommuncations", "System Integration Engineer", "2005-2013", "Worked as a point of contact for a particular product, RPC, in the Global Software Distribution Center, GSDC.",
  "Ericsson Telecommuncations", "System Integration Engineer", "2005-2013", "Our team, Modification Handling, achieved international recognition by avoiding data configuration errors with a simple set os scripts, saving hundreds of man-hours in three countries, Canada, Mexico and Brazil.",
  "Ericsson Telecommuncations", "System Integration Engineer", "2005-2013", "Worked in configuration/integration projects on telecommunication equipment at important telecom operators in Brazil and USA.",
  "Fundação para Inovações Tecnológicas - FITec", "System Development Engineer", "2004-2005", "Coordinated a group of 4 engineers in a project of a graphical command user interface, GUI for Lucent.",
  "Sanmina-SCI", "Project Team Lead", "2003-2004", "Overnight I stopped managing technology to start managing people, resources, budget and pieces of equipment.",
  "Sanmina-SCI", "Project Team Lead", "2003-2004", "It was a great experience establishing the brand new Sanmina Software Development Centre - BRDC, powered by the incentives of Brazilian R&D law.",
  "Sanmina-SCI", "Project Team Lead", "2003-2004", "I coordinated a group of 8 local engineers as well as two remote teams of developers, from important Brazilian Universities, in software development projects.",
  "Sanmina-SCI", "Project Team Lead", "2003-2004", "BRDC is up and running to these days",
  "Ericsson Telecommuncations", "Telecom System Analyst", "2000-2003", "Worked as a functional tester for fixed telephony exchange applications.",
  "Ericsson Telecommuncations", "Telecom System Analyst", "2000-2003", "Started training in project management.",
  "Fundação Dr. Amaral Carvalho", "Clinical Engineer", "1995-2000", "Responsible for assessing technology in a hospital environment and managing healthcare equipment life cycle.",
  "Fundação Dr. Amaral Carvalho", "Clinical Engineer", "1995-2000", "Was able to enhance patient safety at the hospital environment by managing equipment procurement and retirement, as well as managing maintenance of a broad family of healthcare equipment.",
  "Fundação Dr. Amaral Carvalho", "Clinical Engineer", "1995-2000", "Responsible for a group of 9 craftsman and 1 electrician."
)


# Courses
courses <- tribble(
  ~name, ~school, ~where, ~year,
  "Jira Administration - Server - 8.5", "Atlassian University", "Online", 2020,
  "\\href{https://courses.edx.org/certificates/00ba32e50b55417aa9e713fc79b62a1a}{Data Science: R Basics}", "HarvardX", "Online", 2020,
  "AFIGP - Academy of Project Management Instructors", "PMI-SP", "São Paulo", 2017,
  "Agile Lego Challenge", "PMI-SP", "Campinas", 2017,
  "Finance Mathematics and Excel", "Universidade Estadual de Campinas - UNICAMP", "Campinas", 2011
)


# Certifications
cert <- tribble(
  ~name, ~date, ~detail,
  "Lean IT Foundation (LITA)", "Jul-2020", "6342243.20795754",
  "Lean IT Foundation (LITA)", "Jul-2020", "\\href{https://app.exeed.pro/holder/badge/64689}{See credential}",
  "PMI Agile Certified Practitioner (ACP)", "Mar-2018", "2167691",
  "PMI Agile Certified Practitioner (ACP)", "Mar-2018", "\\href{https://www.youracclaim.com/badges/da494590-2ef9-467c-b19e-f0b2ef588c21/linked_in_profile}{See credential}",
  "Scrum Alliance (Certified ScrumMaster CSM)", "May-2017", "655107",
  "Scrum Alliance (Certified ScrumMaster CSM)", "May-2017", "\\href{https://www.scrumalliance.org/community/profile/jlima21}{See credential}",
  "PMI Project Management Professional (PMP)", "Feb-2015", "1789797",
  "PMI Project Management Professional (PMP)", "Feb-2015", "\\href{https://www.youracclaim.com/badges/040bafc3-b813-439b-9334-a65cb5178b41}{See credential}",
  "Ericsson Certified (ECT-IP)", "Aug-2013", "IP Technology"
)



# Volunteer
volunteer <- tribble(
  ~name, ~date, ~description,
  "\\href{http://ateac.org.br/}{ATEAC}", "2011 - present", "Children assisted therapy with dogs.",
  "\\href{http://ateac.org.br/}{ATEAC}", "2011 - present", "We take dogs to the Pediatric ward, and walk with the kids, in exchange for a smile :)"
)

# Articles
articles <- tribble(
  ~name, ~date, ~description,
  "\\href{https://tinyurl.com/26t8bsbh}{Isto é o que aprendi trabalhando com Jira, Python, R e RStudio}", "Sep-2021", "LinkedIn",
  "\\href{https://tinyurl.com/58eb73p3}{Lições na Pandemia}", "Aug-2020",  "LinkedIn",
  "\\href{https://www.linkedin.com/pulse/earned-schedule-eduardo-lima-mba-csm-pmp-/}{Earned Schedule Tool}", "Feb-2018",  "LinkedIn",
  "\\href{https://www.linkedin.com/pulse/earned-value-tool-eduardo-lima-mba-csm-pmp-/}{Earned Value Tool}", "Dec-2017", "LinkedIn",
  "\\href{https://github.com/LimaVazEduardo/MailApp.sendEmail}{MailApp.sendEmail}", "Jul-2021", "GitHub",
  "\\href{https://github.com/LimaVazEduardo/Curriculum}{Data Driven Curriculum}", "Oct-2021", "GitHub"
)
