## Mainly borrowed from @jennybc

RPROJ = list(PROJHOME = normalizePath(getwd()))

## Add a cd function, so that I can just cd("input") and then cd("code")

RPROJ$cd = function (subdir) {
  sdir = file.path(PROJHOME, subdir)
  setwd(sdir)
}

attach(RPROJ)

cat("sourcing Project-specific .Rprofile\n")
cat('retrieve the top-level Project directory at any time with PROJHOME or via get("PROJHOME", "RPROJ"):\n',
    get("PROJHOME", "RPROJ"), "\n")

rm(RPROJ)
