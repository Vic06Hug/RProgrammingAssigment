
#Esta función crea un "matriz especial " de tipo objeto que puede guardar en la caché su inversa
makeCacheMatrix <- function (x= matrix ()){
    matrizInversa <- NULL
    establecerMatriz  <- function (y){
        x <<- y
        matrizInversa <<- NULL
    }
    get <- function () x
    estableceMatrizInversa <- function(resuelveMatriz) matrizInversa <<- resuelveMatriz
    generaMatrizInversa <- function() matrizInversa 
        list (establecerMatriz = establecerMatriz, get = get, estableceMatrizInversa = estableceMatrizInversa, generaMatrizInversa = generaMatrizInversa)
}matrizInversa <- x$get

}

#Esta otra función regresa la matriz inversa de 'x' en la función anterior
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    matrizInversa <- x$generaMatrizInversa
    if(!is.null(matrizInversa)){
        message("Obteniendo datos en la caché")
    }
    data <- x$get()
    inv <- solve(data)
    x$estableceMatrizInversa
    matrizInversa
    }
