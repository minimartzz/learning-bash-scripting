# Basic function
basic_function () {
  echo "basic function here"
}

basic_function

# Function that changes variables
var1=10
var2=20
var3=30

function_change_var () {
  local var1="changed to string"
  var2="changed to another string"

  echo "this is inside the function"
  echo $var1
  echo $var2
}

function_change_var

echo "this is outside the function"
echo $var1
echo $var2 # var2 here has changed because it was set inside the function

# Function with variables
#  - Uses $1, $2, $3 ... to call the function in order
#  - $0 is reserved for the function name
#  - $* and $@ hold all the positional parameters
function_with_variable () {
  echo "These are the function parameters $*"
  varsum=$(expr $1 + $2 + $3)

  echo $varsum
  echo "Your name is $4"
}

function_with_variable $var1 20 $var3 "Martin"
