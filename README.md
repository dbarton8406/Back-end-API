== README
#Authentication
### The authentication token must be passed in the headers as "access_token"

#Register Treasurers Account

##Post/Signup

**Params**

`living_space': The name of the living space
`username`: A username must be unique
`name`: Treasurers first name and last name
`email`: An email must be unique and have an @ symbol followed by a "."
`password`: A password must be at least 8 characters

**Response**

If user was created successfully it will return status code 201

```
{
	"treasurer": {
	"living_space": "The iron yard"
	"admin": true
	"username": "Charlie_1980"
	"name": "Charles Alderete"
	"email": "ninja@kittens.com"
	"access_token": "......"
	}
}

If the treasurer could not be created you should receive status code 422 and 

```
{
	"errors" [
	"Email has already been taken", Username has already been taken]
}

##Create Roomates

###POST/create/roomates

Only treasurers can create roomates

**Params**

`username`: A username must be unique
`name`: Treasurers first name and last name
`email`: An email must be unique and have an @ symbol followed by a "."
`password`: A password must be at least 8 character
'treasurer_id': The id of the treasurer that the roomate pays too 

```
{
	"roomate": {
	"living_space": "The iron yard"
	"admin": "false"
	"username": "Charlie_1980"
	"name": "Charles Alderete"
	"email": "ninja@kittens.com"
	"access_token": "......"
	}
}

If the roomate was successfully created you will receive status code 201

If the roomate could not be created you should receive status code 422 and 

```
{
	"errors" [
	"Email has already been taken", Username has already been taken]
}

#Create Bills

##POST/create/bills

Both treasurers and roomates can create bills

**Params**

`name`: Name of bill 
`total_balance` Total amount of bill
`your_balance` Amount of money the roomate is paying on the bill
`due_date` The date the bill is due
`company` The company the bill is being paid too
'roomate_id' The id of the roomate the bill belongs too
'treasurer_id' The id of the treasurer that the bill belongs too

If bill is created you will receive a status code 201 and 

```
{
	"bill": {
	"name": "Bunnies"
	"total_balance": "800"
	"your_balance": "400"
	"company": "Bunnies R Us"
	"roomate_id": "1"
	"treasurer_id": "1"
	"due_date": "2012-03-27 23:53:38 UTC"
	}
}




Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
