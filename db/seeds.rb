User.create(name:"skk",email:"a@gmail.com",password:1234)
User.create(name:"random",email:"ab@gmail.com",password:2345)
User.create(name:"lassi",email:"abc@gmail.com",password:1234)
User.create(name:"guest",email:"abcd@gmail.com",password:1234)


######################################################################
# Product.create(name:"cooler",description:"cool",user_id:1)
# Product.create(name:"cooler",description:"cool",user_id:2)
# Product.create(name:"cooler",description:"cool",user_id:3)

# Product.create(name:"scho",description:"cool",user_id:1)
# Product.create(name:"scho",description:"cool",user_id:2)
# Product.create(name:"scho",description:"cool",user_id:3)


Product.create(name:"cooler",description:"cool")
Product.create(name:"cool",description:"coo")
Product.create(name:"oo",description:"ool")
Product.create(name:"scho",description:"cool")
###############################################################
Order.create(user_id:1,product_id:1)
Order.create(user_id:1,product_id:2)
Order.create(user_id:1,product_id:3)
Order.create(user_id:2,product_id:1)
Order.create(user_id:2,product_id:2)
Order.create(user_id:2,product_id:3)

###########################################################
Profile.create(name:"ksh",username:"kshv17",bio:"love all things",user_id:1)
Profile.create(name:"lsh",username:"lssv17",bio:"not all things",user_id:2)
Profile.create(name:"lsh",username:"lssv17",bio:"not all things",user_id:3)

##############################################################
Cat.create(typ:"summer")
Cat.create(typ:"winter")
Cat.create(typ:"electrical")