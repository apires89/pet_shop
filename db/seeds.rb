puts 'Cleaning database...'
Pet.destroy_all
Category.destroy_all

puts 'Creating categories...'
dog = Category.create!(name: 'dog')
bear = Category.create!(name: 'bear')
seal = Category.create!(name: 'seal')

puts 'Creating pets...'
Pet.create!(sku: 'original-bear',price: 3000, name: 'Brown Bear', category: bear, photo_url: 'https://images.newscientist.com/wp-content/uploads/2017/04/26173712/gettyimages-613093404.jpg')

Pet.create!(sku: 'seal-xl', name: 'obese-happy-seal',price: 5000, category: seal, photo_url: 'https://nationalpostcom.files.wordpress.com/2018/09/hal500-the-canadian-press.jpg?quality=80&strip=all&w=780')
Pet.create!(sku: 'dog-xs',   name: 'disaproving-corgi',price: 10000, category: dog, photo_url: 'https://media.makeameme.org/created/disapproving-corgi-disapproves.jpg')
puts 'Finished!'
