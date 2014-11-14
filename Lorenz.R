Lorenz <- function(t, state, parameters){
        with(as.list(c(state, parameters)),{
                # Rate of Change
                dX <- a*X + Y*Z
                dY <- b*(Y-Z)
                dZ <- -X*Y + c*Y - Z
                
                # Return the rate of change
                list(c(dX, dY, dZ))
                
        }) # End with (as.list ...
}