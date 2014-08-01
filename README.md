## spin

This is an experimental R package that provides a [spin](http://fgnass.github.io/spin.js/) html widget for R.  For a quick tutorial, see Web Apprentice [spin.js Activity Indicator](spin.js Activity Indicator).

### Installation

You can install it from `github`.

```r
library(devtools)
#install_github('rstudio/htmltools')
#install_github('ramnathv/htmlwidgets')
#install_github('timelyportfolio/htmlwidgets_spin')
```

### Usage

Let us first create a simple spin.

```r
s1 <- spin()
s1
```

### See Also

The `spin` package makes use of the `htmlwidgets` package that makes it super-simple to package any HTML widget for R. Please read [this](http://github.com/htmlwidgets/blob/master/README.md) to get a better sense on how the `htmlwidgets` package can make your life easier!
