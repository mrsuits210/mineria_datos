PRACTICE 2
# 1 It is used to average the DATA

DATOS <- c(80,77,82,82,73,82,58,78,6,35)
mean(DATOS) 


# 2 It is used to average the DATA

median(DATOS) 


# 3 Take the absolute value of X

abs(DATOS) 

# 4 Returns the exponential of x

exp(DATOS) 


# 5 Returns the square root of x

sqrt(DATOS) 


# 6 Returns the factorial of x (x!)

factorial(DATOS) 


# 7 Variance of x


var(DATOS) 

# 8 Standard deviation of x


sd(DATOS) 

# 9 Standard scores (z scores) of x


scale(DATOS)


# 10 The quartiles of x

quantile(DATOS) 


# 11 Summary of x: mean, min, max, etc.

summary(DATOS) 


# 12 Syntax for a cycle (While) 

begin <- 1
while (begin <= 10){
  cat('This is loop number',begin)
  begin <- begin+1
  print(begin)
}

# 13 Lapply function that returns a list of the same length as the input list


movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
str(movies_lower)

# 14 Names function (names (x)): allows you to assign names to the elements of a variable
x <- c(2,4,6)  # Asigna 3 valores a la variable x
names(x) <- c("I","II","III")  # Asigna nombres a los 3 valores anteriores
x

# 15 The "cat" function writes text and variables in the output
x <- 2
y <- 4
cat(x,"elevado a",y,"es",x ^ y,"\n")



# 16 The "invisible" function hides x in the return function so that the result is not visibl

suma <- function(a, b) {
  s <- a + b
  return(invisible(s))
}

suma(5,4)

# 17 The length (x) function shows the number of elements in a vector


x <- 1:20  # Se guarda en x los números del 1 al 20
length(x)  # Número de elementos de x

# 18 The trunc (x) function removes the decimals of a number
trunc(1.999999)
x <- 56.13
trunc(x)


# 19 The round function (x, decimals = 0) rounds a number with the indicated decimals, if decimals are not indicated, it is rounded without decimals
round(6.78)  # Al no indicar decimales el resultado es un número entero aproximado
round(6.78,1) # Se redondea con un decimal
round(10.627,1) # Como el segundo decimar es menor de 5 no se aproxima

# 20 The runif function (n, start = 0, end = 1) generates n random numbers between start and end
runif(5)  # 5 números al azar entre 0 y 1
runif(5,1,10)  # 5 números al azar entre 1 y 10
trunc(runif(20,1,10))  # 20 números enteros al azar entre 1 y 10

