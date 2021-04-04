# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
contacts = [
  {
    lastname:  "Stevens",
    firstname: "Andrew",
    email: "andrew@company.com",
    tags: ["Lead", "HighValue", "Finalized"]
  },
  {
    lastname:  "Rodriguez",
    firstname: "Bob",
    email: "bob@yahoo.com",
    tags: ["Lead", "Stage2", "LowValue"]
  },
  {
    lastname:  "Smith",
    firstname: "Cathy",
    email: "cathy@lycos.com",
    tags: ["Churned", "Finalized", "RealEstate"]
  }
]

contacts.each { |contact|
  c = Contact.find_or_create_by(
    lastName: contact[:lastname],
    firstName: contact[:firstname],
    email: contact[:email]
  )
  contact[:tags].each { |tag| c.tags << Tag.find_or_create_by(tag: tag) }


  }
