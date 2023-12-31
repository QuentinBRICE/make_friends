
require 'open-uri'

Advertisement.destroy_all
User.destroy_all

User.create(email: "test@test.test", password: "123456")

advertisement = Advertisement.new(title: 'sortie entre amis', description: "détente avec des gens biens", price: 15, address: "15 Bd des Italiens, 75002 Paris")
advertisement.user = User.all.sample
advertisement.photo.attach(
  io: URI.open('https://img.grouponcdn.com/seocms/41NmtLyPyXHiZ1CYBg6sBMkoEtYN/Friends-eating-together_jpg-1079x648'),
  filename: 'sortie.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
advertisement.save!

advertisement = Advertisement.new(title: 'bowling entre amis', description: "détente avec des gens biens", price: 20, address: "5 Bd des Italiens, 75002 Paris")
advertisement.user = User.all.sample
advertisement.photo.attach(
  io: URI.open('https://as2.ftcdn.net/v2/jpg/02/10/01/69/1000_F_210016964_RnRplmGfDDzO7iZfn7nd2gcWCyaW2cQK.jpg'),
  filename: 'bowling.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
advertisement.save!
