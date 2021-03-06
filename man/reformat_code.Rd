% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build.R
\name{reformat_code}
\alias{reformat_code}
\title{Format the code in the usage and examples sections}
\usage{
reformat_code(path, ...)
}
\arguments{
\item{path}{the path of the Rd file}

\item{...}{other arguments passed to \code{tidy_source}}
}
\value{
\code{NULL}; as a side effect, the original Rd file will be updated
}
\description{
The function \code{\link[formatR]{tidy_source}} in the \pkg{formatR} package
is used to polish the Rd files generated by \pkg{roxygen2} in the usage and
examples sections.
}
\note{
If the usage or examples code is not syntactically correct, it will not
  be reformatted and a message will be printed on screen. One possible
  situation is the percent symbol \code{\%}, which should be escaped even in
  the examples code (cf Writing R Extensions), and this can make the code
  syntactically incorrect, e.g. \code{a \%in\% b} should be \code{a
  \\\%in\\\% b} but the latter is not valid R code. Anyway, this function
  will try to unescape the percent symbols before reformating the code, then
  escape them.
}
\examples{
rd.file = system.file("examples", "reformat_code_demo.Rd", package = "Rd2roxygen")
file.copy(rd.file, tempdir())
fmt.file = file.path(tempdir(), "reformat_code_demo.Rd")

file.show(fmt.file)  ## show the raw Rd

reformat_code(fmt.file)
file.show(fmt.file)  ## the formatted Rd
}
\seealso{
\code{\link[formatR]{tidy_source}}
}
\author{
Yihui Xie <\url{http://yihui.org}>
}
