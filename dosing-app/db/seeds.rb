# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


clinics = [
  { name: 'Clinic_01', clinic_number:123456, location:'Oakland' },
  { name: 'Clinic_02', clinic_number:7891011, location:'Oakland'},
  { name: 'Clinic_03', clinic_number:12131416, location:'Oakland'},
  { name: 'Clinic_04', clinic_number:17181920, location:'Oakland'},
  { name: 'Clinic_05', clinic_number:21222324, location:'Oakland'},
  { name: 'Clinic_06', clinic_number:25262728, location:'Oakland'},
  { name: 'Clinic_07', clinic_number:29303132, location:'Oakland'},
]

clinics.each do |clinic|
  Clinic.create(clinic)
end
clinic_list = Clinic.all()

doctors = [
  { first_name: 'Bill', last_name:'Bixby', badge_number:123456, clinic_id: clinic_list[0].id },
  { first_name: 'John', last_name:'Smith', badge_number:7891011, clinic_id: clinic_list[1].id },
  { first_name: 'Quincy', last_name:'Adams', badge_number:12131416, clinic_id: clinic_list[2].id},
  { first_name: 'Gregory', last_name:'House', badge_number:17181920, clinic_id: clinic_list[3].id},
  { first_name: 'Julius', last_name:'Irving', badge_number:21222324, clinic_id: clinic_list[4].id },
  { first_name: 'Joseph', last_name:'Mengela', badge_number:25262728, clinic_id: clinic_list[5].id },
  { first_name: 'Bootsy', last_name:'Collins', badge_number:29303132, clinic_id: clinic_list[6].id },
]

doctors.each do |doctor|
  Doctor.create(doctor)
end

doctor_list = Doctor.all()


patients = [
  { first_name: 'Johann', last_name:'Helmont', patient_number:123456, date_of_birth:1971, sex:'male', doctor_id:doctor_list[0].id, clinic_id:clinic_list[0].id},
  { first_name: 'Baldwin', last_name:'Haney', patient_number:7891011, date_of_birth:1971, sex:'male', doctor_id:doctor_list[1].id, clinic_id:clinic_list[1].id},
  { first_name: 'William', last_name:'Petty', patient_number:12131416,date_of_birth:1971, sex:'male', doctor_id:doctor_list[2].id, clinic_id:clinic_list[2].id},
  { first_name: 'Thomas', last_name:'Willis', patient_number:17181920,date_of_birth:1971, sex:'male', doctor_id:doctor_list[3].id, clinic_id:clinic_list[3].id},
  { first_name: 'Anne', last_name:'Greene', patient_number:21222324,date_of_birth:1971, sex:'male', doctor_id:doctor_list[4].id, clinic_id:clinic_list[4].id},
  { first_name: 'Fanny', last_name:'Burney', patient_number:25262728,date_of_birth:1971, sex:'male', doctor_id:doctor_list[5].id, clinic_id:clinic_list[5].id},
  { first_name: 'Mary', last_name:'Mallon', patient_number:29303132,date_of_birth:1971, sex:'male', doctor_id:doctor_list[6].id, clinic_id:clinic_list[6].id}
]

patients.each do |patient|
  Patient.create(patient)
end

patient_list = Patient.all()

blood_tests = [
  {tsat:10, ferrin:25, date:"01/03/2010", patient_id:patient_list[0].id},
  {tsat:11, ferrin:24, date:"01/03/2010", patient_id:patient_list[1].id},
  {tsat:12, ferrin:20, date:"01/03/2010", patient_id:patient_list[2].id},
  {tsat:13, ferrin:26, date:"01/03/2010", patient_id:patient_list[3].id},
  {tsat:9, ferrin:23, date:"01/03/2010", patient_id:patient_list[4].id},
  {tsat:10, ferrin:24, date:"01/03/2010", patient_id:patient_list[5].id},
  {tsat:11, ferrin:22, date:"01/03/2010", patient_id:patient_list[6].id},
  {tsat:14, ferrin:20, date:"01/03/2010", patient_id:patient_list[0].id},
  {tsat:10, ferrin:25, date:"01/03/2010", patient_id:patient_list[1].id},
  {tsat:9, ferrin:25, date:"01/03/2010", patient_id:patient_list[2].id},
]

blood_tests.each do |test|
  BloodTest.create(test)
end
