# https://openstax.org/books/c%C3%A1lculo-volumen-3/pages/7-1-ecuaciones-lineales-de-segundo-orden

fun1 <- function(xx=0){
  mat = matrix(c(0, 5, 1, 4), ncol=2)
  res = mat %*% c(xx[1], xx[2])
}

t1 = 0
t2 = 5
n = 1000

t = seq(t1, t2, length.out = n)
h = t[2] - t[1]

xx = matrix(rep(0, 2*n), ncol=2)

x1 = c(5,1)
xx[1,] = x1

for (i in 2:n){
  x2 = x1 + h*fun1(x1)
  xx[i,] = x2
  x1 = x2 
}

plot(t, xx[,2], type='l')

y = 4*exp(-t) + exp(5*t)

points(t, y, type='l', col='red')
