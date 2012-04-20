\name{TestSurvRec-package}
\alias{TestSurvRec-package}
\alias{TestSurvRec}
\docType{package}

\title{Statistical tests to compare survival curves of two groups with recurrent events. 
}
\description{Recurrent events are common in many areas: \emph{psychology, engineering, medicine, physics, astronomy, biology, economics} and \emph{so on}. Such events are very common in the real world: \emph{viral diseases, carcinogenic tumors, machinery and equipment failures, births, murders, rain, industrial accidents, car accidents} and \emph{so on}. The availability of computerized tools for the analysis is indispensable. The analysis de supervivencia is a branch of statistics that allows us to model the time until the occurrence of an events.In general, the objectives of analysis are: the modeling of the survival function to estimate the risk or benefit of the occurrence of an event, occurrence probabildad of this event and comparing population groups. The development of tools for the statistical analysis of recurrent event is relatively recent and are not fully known. The purpose of this package is to present statistical tests for the analysis of recurrent event data. \bold{Martínez} \emph{et al. }(\bold{2009}) published a statistical test to compare survival curves of two groups with recurrent events.}
\details{The hypothesis is:
					\deqn{\bold{H_{o} : S_{1}(t) = S_{2}(t)}} 
					\deqn{\bold{H_{1} : S_{1}(t) \neq S_{2}(t)}}
Where, \eqn{S_{1}(t)} and \eqn{S_{2}(t)} are the survival curves of the both group. The statistic of test is:
\deqn{Z=\frac{\sum^{\,}_{t\leq\,z}w_{z}\left[\Delta\,N(s,z;r)-E\left\{\Delta\,N(s,z;r)\right\} \right]}{\sqrt{\sum^{\,}_{t\leq\,z}w^{2}_{z}Var\left\{\Delta\,N(s,z;r) \right\}}}}
The statistic Z has a normal asymptotic behavior. Its square has a chi-square approximate behavior with a degree of freedom.
Where,\deqn{\Delta\,N(s, z; 1) = N(s, z+\Delta\,z; 1) - N(s, z; 1)}
\eqn{\Delta\,z} approaches zero. and \eqn{\Delta\,N(s, z; 1)} has a hypergeometric behavior and expected value is equal to \eqn{Y(s, z; 1)×\Delta\,N(s, z)/Y(s, z)} and variance equal to:
\deqn{Var\left[\Delta\,N(s, z; 1) \right]=\frac{Y(s,z)-Y(s,z;1)}{Y(s,z)-1}Y(s,z;1)\frac{\Delta\,N(s,z)}{Y(s,z)}\left[1-\frac{\Delta\,N(s,z)}{Y(s,z)}\right]}
This author proposed various types of weights \eqn{(w_{z})},
\deqn{w_{z}=\left[S(z)\right]^{\gamma}\left[1-S(z)\right]^{\eta}\frac{\left[Y(s,z)\right]^{\alpha}}{\left[Y(s,z)+1\right]^{\beta}}}
The appropriate choice of weights depends on the behavior of the curves. See, that depending on the values of the parameters \eqn{(\alpha,\;\beta,\;\gamma\;and \;\eta )} of this proposal, it is able to generate others tests for analysis survival with recurrent events, tests of the type: \bold{logrank, Gehan, Peto-Peto, Fleming-Harrington} and so on. Note that if all parameters are zero \eqn{w_{z} = 1}, generates the test type logrank for recurrent events. If, \eqn{\alpha = 1} and the other parameters are zero \eqn{w_{z} = Y(s,z)}, it generates the test type \bold{Gehan}. If, \eqn{\gamma=1} and the other parameters are zero \eqn{w_{z} = S(z)}, generate the test of \bold{Peto-Peto}. If, \eqn{\gamma = 1} and \eqn{\eta = 1} and the rest of the parametres are zero, it generate \bold{Fleming-Harrington} test. On the other hand, if we analyze the statistical comparison for recurrent events, observe that it depends on the counting processes \bold{N} and \bold{Y}, which are doubles indexed. With, the index s that measures the calendar time and z index that measures the gap times, so that if the observation time tends to infinity and unity event study can only occur once in each, the statistical comparison becomes the weighted classical statistical comparison of groups in the survival analysis. So, we can conclude that this latter is a particular case of the proposed \bold{Martínez} \emph{et al. }(\bold{2009}). These tests are useful diverse fields such as medicine, public health, insurance, social science, reliability and others.
}
\author{Dr. \bold{Carlos Martínez}, <cmmm7031@gmail.com>}
\references{\bold{Martínez C., Ramírez, G., Vásquez M.} (\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.

	\bold{Martínez, C. (2008)}. Generalización de algunas pruebas clásicas de comparación de
  curvas de supervivencia al caso de eventos de naturaleza recurrente. Tesis doctoral.
  \emph{Universidad Central de Venezuela (UCV)}. Caracas-Venezuela.
  
  \bold{Peña E., Strawderman R., Hollander, M. (2001)}. Nonparametric Estimation with Recurrent
  Event Data. \emph{J.A.S.A.} 96, 1299-1315.
}
\keyword{ package }
\seealso{Dif.Surv.Rec, Plot.Event.Rec, Plot.Surv.Rec, Print.Summary
}
\examples{data(TBCplapyr)
Plot.Event.Rec(TBCplapyr)
Dif.Surv.Rec(TBCplapyr,"all",1,1,0,0)
Dif.Surv.Rec(TBCplapyr,"Grec")
Print.Summary(TBCplapyr)
}
