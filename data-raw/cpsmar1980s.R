rm(list = ls())
library(magrittr)
library(dplyr)
library(R.utils)
library(haven)
library(devtools)
library(stringr)
library(readstata13)
library(foreign)

# Download the zipfile and Stata do file from IPUMS website
# Put them in the data-raw folder

# 1990s --------------------------------------------------------------------
# The raw data file: cps_00019.dat.gz is downloaded from IPUMS
# Sample: 1990-1999
# Variables: All available variables from IPUMS

raw = "cps_00020.dat.gz"
raw.do = "cps_00020.do"

cd("data-raw")
gunzip(raw)
raw.do = readLines(raw.do)

# Edit the do-file, convert the raw data to dta file, and load into memory ---

dat_dir = paste0("cd ", file.path(PROJHOME), "/data-raw")
dat_dir

data_frame(do = raw.do) %>%
  mutate(emptyCell = ifelse(`do` == "", 1, 0)) %>%
  mutate(emptyCell = cumsum(emptyCell)) %>%
  mutate(do = ifelse(emptyCell == max(emptyCell) - 1, "compress", do)) %>%
  mutate(do = ifelse(emptyCell == max(emptyCell), "save cpsmar1980s, replace", do)) %>%
  mutate(emptyCell = cumsum(emptyCell)) %>%
  mutate(do = ifelse(emptyCell == 1, dat_dir, do)) %>%
  select(-emptyCell) -> raw.do

raw.do[['do']] %>%
  writeLines("cpsmar1980s.do")

system("/Applications/Stata/StataSE.app/Contents/MacOS//stata-se -b cpsmar1980s.do")
cpsmar1980s = read_dta("cpsmar1980s.dta")

# Create rda files in the data directory -----------------------------


cpsmar1980 = cpsmar1980s %>% filter(year == 1980)
use_data(cpsmar1980, overwrite = TRUE)

cpsmar1981 = cpsmar1980s %>% filter(year == 1981)
use_data(cpsmar1981, overwrite = TRUE)

cpsmar1982 = cpsmar1980s %>% filter(year == 1982)
use_data(cpsmar1982, overwrite = TRUE)

cpsmar1983 = cpsmar1980s %>% filter(year == 1983)
use_data(cpsmar1983, overwrite = TRUE)

cpsmar1984 = cpsmar1980s %>% filter(year == 1984)
use_data(cpsmar1984, overwrite = TRUE)

cpsmar1985 = cpsmar1980s %>% filter(year == 1985)
use_data(cpsmar1985, overwrite = TRUE)

cpsmar1986 = cpsmar1980s %>% filter(year == 1986)
use_data(cpsmar1986, overwrite = TRUE)

cpsmar1987 = cpsmar1980s %>% filter(year == 1987)
use_data(cpsmar1987, overwrite = TRUE)

cpsmar1988 = cpsmar1980s %>% filter(year == 1988)
use_data(cpsmar1988, overwrite = TRUE)

cpsmar1989 = cpsmar1980s %>% filter(year == 1989)
use_data(cpsmar1989, overwrite = TRUE)

# Delete generated files ---------------------------------------------

unlink("cpsmar1980s.log")
unlink("cpsmar1980s.do")
unlink("cpsmar1980s.dta")
unlink("cps_00020.dat")

# Clean environment ----------------------------------------
rm(list = ls())
