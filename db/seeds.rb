Heroine.destroy_all
Power.destroy_all

powers = [
  {name: "super strength", description: "gives the wielder super-human strengths" },
  {name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
  {name: "super human senses", description: "allows the wielder to use her senses at a super-human level" },
  {name: "elasticity", description: "can stretch the human body to extreme lengths" }
]

powers.each {|power| Power.create(power)}

heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel"},
  {name: "Doreen Green", super_name: "Squirrel Girl" },
  {name: "Gwen Stacy", super_name: "Spider-Gwen" },
  {name: "Janet Van Dyne", super_name: "The Wasp" },
  {name: "Wanda Maximoff", super_name: "Scarlet Witch" },
  {name: "Carol Danvers", super_name: "Captain Marvel" },
  {name: "Jean Grey", super_name: "Dark Phoenix" },
  {name: "Ororo Munroe", super_name: "Storm" },
  {name: "Kitty Pryde", super_name: "Shadowcat" },
  {name: "Elektra Natchios", super_name: "Elektra" }
]

heroines.each { |heroine| Heroine.create(heroine) }

HeroinePower.create(heroine_id: 1, power_id: 1)
HeroinePower.create(heroine_id: 2, power_id: 2)
HeroinePower.create(heroine_id: 3, power_id: 3)
HeroinePower.create(heroine_id: 4, power_id: 4)
HeroinePower.create(heroine_id: 5, power_id: 1)
HeroinePower.create(heroine_id: 6, power_id: 2)
HeroinePower.create(heroine_id: 7, power_id: 3)
HeroinePower.create(heroine_id: 8, power_id: 4)
HeroinePower.create(heroine_id: 9, power_id: 1)
HeroinePower.create(heroine_id: 10, power_id: 2)