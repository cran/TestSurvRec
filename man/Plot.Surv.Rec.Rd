\name{Plot.Surv.Rec}
\alias{Plot.Surv.Rec}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Survival functions with recurrent events are estimated and are plotted. The survival curves of two groups are estimated using PHS's estimator.
}
\description{Survival functions estimated by PSH estimator are plotted. The survival curves by groups are estimates are plotes with help of the 'survrec' package, which was made in language R by \bold{González} \emph{et al.} (\bold{2002}). 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{Plot.Surv.Rec(XX)}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{XX}{Data type recurrent events. Example: TBCplapyr, TBCplathi or TBCpyrthi}
}
\value{Plots of the curves of the two groups and the estimates of survival functions are returned.
}
\references{\bold{Martínez C., Ramírez, G., Vásquez M. }(\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.

\bold{González, J., Peña, E., & Strawderman, R. }(\bold{2002}). survrec: Survival analysis for recurrent event
data. \emph{The Comprehensive R Archive Network.} R package.

\bold{Peña E., Strawderman R., Hollander, M.} (\bold{2001}). Nonparametric Estimation with Recurrent
  Event Data. \emph{J.A.S.A.} 96, 1299-1315.
  
%% ~put references to the literature/web site here ~
}
\author{Dr. \bold{Carlos Martínez} <cmmm7031@gmail.com>
%%  ~~who you are~~
}
\seealso{Plot.Event.Rec, Dif.Surv.Rec
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{data(TBCplapyr)
Plot.Surv.Rec(TBCplapyr)}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Functions }
\keyword{ Survival }% __ONLY ONE__ keyword per line
