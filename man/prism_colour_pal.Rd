% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prism_colour_pal.R
\name{prism_colour_pal}
\alias{prism_colour_pal}
\alias{prism_color_pal}
\title{Prism colour palettes}
\usage{
prism_colour_pal(palette = "colors")

prism_color_pal(palette = "colors")
}
\arguments{
\item{palette}{\code{string}. Palette name, use
\code{lengths(ggprism_data$colour_palettes)} to show all valid palette names
and their number of values each palette supports.}
}
\description{
A collection of colour palettes which mirror the
colour schemes available in GraphPad Prism.
}
\examples{
library(ggplot2)

## list all available colour palettes and their lengths
lengths(ggprism_data$colour_palettes)

## select some colours from a palette
prism_colour_pal(palette = "starry")(4)

## see all the colours in a specific palette
# define a function for convenience
library(scales)

show_palette <- function(palette) {
  scales::show_col(
    prism_colour_pal(palette = palette)(
      attr(prism_colour_pal(palette = palette), "max_n")
    )
  )
}

# show the colours in the palette "pearl"
show_palette("pearl")
}
