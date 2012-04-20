\name{Dif.Surv.Rec}
\alias{Dif.Surv.Rec}

\title{Function that measured the statistical difference between the survival
curves of two groups}
\description{This function computes the p.values of the tests that measured the difference between the survival curves of two groups with recurrent event. 
}
\usage{Dif.Surv.Rec(XX, type, alfa, beta,gamma,eta)}

\arguments{
  \item{XX}{Object type recurrent events data}
  \item{type}{"LRrec","Grec","TWrec","PPrec","PMrec","PPrrec","FHrec","CMrec","Mrec","all"}
  \item{alfa}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
  \item{beta}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
  \item{gamma}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
  \item{eta}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
,}
\details{ This function contains the tests to compare two survival curves with recurrent events. The curves are estimated using either the \bold{Peña-Strawderman-Hollander} estimators. \bold{Peña} \emph{et al.} (\bold{2001}) define the estimator of the survival function to recurrent events, estimator of \bold{Kaplan-Meier} or \bold{GPLE}. They used two counting processes \bold{N} and \bold{Y}. The estimator is showed as following:
                         \deqn{\hat{S}(z) =\prod_{t\leq\,z}\left[1-\frac{\Delta\,N\left(s,z\right)}{Y\left(s,z\right)}\right]}
The authors considered two time scales: one related to calendar time (s) and the other related to intercurrences time (t). So, the counting process \bold{N(s, z)} represents the number of observed events in the calendar period \eqn{[0,s]} with \eqn{t\leq\,z} and \bold{Y(s, z)} represents the number of observed events in the period \eqn{[0,s]} with \eqn{t\geq\,z}. The produc-limit estimator was developed by \bold{Peña, Strawderman} and \bold{Hollander, PSH}. This estimator is useful when the interoccurrence times are assumed to represent an IID sample from some underlying distribution S. 

\bold{GPLE model to survival curves with recurrent events by group}

The \bold{GPLE} estimator is defined as: A fundamental assumption of this approach is that individuals have been previously and properly classified in groups according to a stratification variable denote by r. Thus, we have to estimate a survival function for each group as:
													\deqn{\hat{S}_{r}(z) =\prod_{t\leq\,z}\left[1-\frac{\Delta\,N\left(s,z;r\right)}{Y\left(s,z;r\right)}\right]\!\nabla\:r\:=\!1,2.}
}
\value{# Dif.Surv.Rec(TBCplapyr,"all",0,0,0,0). Values returned
\tabular{lll}{
 Nomb.Est\tab  Chi.square\tab   p.value\cr
 LRrec   \tab  0.3052411 \tab 0.5806152\cr
 Grec    \tab  1.4448446 \tab 0.2293570\cr
 TWrec   \tab  0.9551746 \tab 0.3284056\cr
 PPrec   \tab  1.1322772 \tab 0.2872901\cr
 PMrec   \tab  1.1430319 \tab 0.2850126\cr
 PPrrec  \tab  1.1834042 \tab 0.2766641\cr
 HFrec   \tab  0.3052411 \tab 0.5806152\cr
 CMrec   \tab  0.3052411 \tab 0.5806152\cr
 Mrec    \tab  1.5298763 \tab 0.2161310\cr
 }
}
\references{\bold{Martínez C., Ramírez, G., Vásquez M. }(\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.

	\bold{Martínez, C.} (\bold{2008}). Generalización de algunas pruebas clásicas de comparación de
  curvas de supervivencia al caso de eventos de naturaleza recurrente. Tesis doctoral.
  \emph{Universidad Central de Venezuela (UCV)}. Caracas-Venezuela.
  
  \bold{Peña E., Strawderman R., Hollander, M.} (\bold{2001}). Nonparametric Estimation with Recurrent
  Event Data. \emph{J.A.S.A.} 96, 1299-1315.
}
\author{Dr. \bold{Carlos Martinez}, <cmmm7031@gmail.com>}

\seealso{Plot.Event.Rec, Plot.Surv.Rec, Print.Summary
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{data(TBCplapyr)
data.frame(TBCplapyr)
#Return p-values of the all tests 
Dif.Surv.Rec(TBCplapyr,"all",0,0,0,0)
#Return p-value of the LRrec test
Dif.Surv.Rec(TBCplapyr)
#Return p-value of the Grec test
Dif.Surv.Rec(TBCplapyr,"Grec")
#Return p-values of the CMrec tests 
#The CMrec test with this parameters generates LRrec test
Dif.Surv.Rec(TBCplapyr,"all",0,0,0,0)
#The CMrec test with this parameters generates Grec test
Dif.Surv.Rec(TBCplapyr,"all",0,0,1,0)
#The CMrec test with this parameters generates TWrec test
Dif.Surv.Rec(TBCplapyr,"all",0,0,0.5,0)
#The CMrec test with this parameters generates PPrec test
Dif.Surv.Rec(TBCplapyr,"all",1,0,0,0)
#The CMrec test with this parameters generates HFrec test
Dif.Surv.Rec(TBCplapyr,"all",1,1,0,0)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Recurrent}
\keyword{ Tests }% __ONLY ONE__ keyword per line