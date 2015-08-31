About
=====

This R data package contains data from IPUMS's Annual Social and Economic Supplement of the Current Population Survey (ASEC, i.e., CPS March Supplement), 1980-1989. All the currently avaiblable variables (as of Aug. 30, 2015) are included.

See [IPUMS's codebooks](https://cps.ipums.org/cps/documentation.shtml) for documentations.

Research based on the IPUMS-CPS database should cite it as follows:

> Miriam King, Steven Ruggles, J. Trent Alexander, Sarah Flood, Katie Genadek, Matthew B. Schroeder, Brandon Trampe, and Rebecca Vick. Integrated Public Use Microdata Series, Current Population Survey: Version 3.0. [Machine-readable database]. Minneapolis: University of Minnesota, 2010.

Installation
============

Install from github with

``` r
devtools::install_github("jjchern/cpsmar1980s")
```

Since there're 10 years of data, the package is kind of big (about 64 MB). It might take a while to download.

Usage
=====

``` r
library(cpsmar1980s)
library(dplyr)

# All the datasets
ls("package:cpsmar1980s", all = TRUE)
#>  [1] "cpsmar1980" "cpsmar1981" "cpsmar1982" "cpsmar1983" "cpsmar1984"
#>  [6] "cpsmar1985" "cpsmar1986" "cpsmar1987" "cpsmar1988" "cpsmar1989"

# All variables in cpsmar1993
names(cpsmar1983)
#>   [1] "rectype"     "year"        "serial"      "mish"        "numprec"    
#>   [6] "hwtsupp"     "hrhhid"      "huhhnum"     "gq"          "hhintype"   
#>  [11] "region"      "statefip"    "statecensus" "asecflag"    "metro"      
#>  [16] "metarea"     "farm"        "ownershp"    "hhincome"    "pubhous"    
#>  [21] "rentsub"     "heatsub"     "heatval"     "heatpay"     "noheat"     
#>  [26] "foodstmp"    "stampno"     "stampmo"     "stampval"    "atelunch"   
#>  [31] "lunchsub"    "frelunch"    "unitsstr"    "fuelheat"    "phone"      
#>  [36] "nfams"       "ncouples"    "nmothers"    "nfathers"    "cpi99"      
#>  [41] "month"       "pernum"      "hiurule"     "hiunpers"    "hiuid"      
#>  [46] "hiufpginc"   "hiufpgbase"  "wtsupp"      "lineno"      "hinswt"     
#>  [51] "momloc"      "stepmom"     "momrule"     "poploc"      "steppop"    
#>  [56] "poprule"     "sploc"       "sprule"      "famsize"     "nchild"     
#>  [61] "nchlt5"      "famunit"     "eldch"       "yngch"       "nsibs"      
#>  [66] "relate"      "age"         "sex"         "race"        "marst"      
#>  [71] "popstat"     "hispan"      "educ"        "higrade"     "colleg75"   
#>  [76] "colleg80"    "schlcoll"    "empstat"     "labforce"    "occ"        
#>  [81] "occ1990"     "ind1990"     "occ1950"     "ind"         "ind1950"    
#>  [86] "classwkr"    "occly"       "occ50ly"     "indly"       "ind50ly"    
#>  [91] "classwly"    "wkswork1"    "wkswork2"    "hrswork"     "uhrswork"   
#>  [96] "wksunem1"    "wksunem2"    "absent"      "looking"     "durunem2"   
#> [101] "durunemp"    "fullpart"    "nwlookwk"    "hourwage"    "paidhour"   
#> [106] "pension"     "whyunemp"    "firmsize"    "whyabsnt"    "majoract"   
#> [111] "wantjob"     "blvenowk"    "cantfind"    "lackschl"    "wrongage"   
#> [116] "handicap"    "kidduty"     "famduty"     "schlduty"    "ilhealth"   
#> [121] "othereas"    "unkreasn"    "fwkads"      "fwkemplr"    "fwkother"   
#> [126] "fwkpubag"    "fwkpvtag"    "fwkrelat"    "intenfwk"    "whyptly"    
#> [131] "whyptlwk"    "usftablw"    "usftptlw"    "lkwkftpt"    "payifabs"   
#> [136] "numemps"     "wnftlook"    "wnlwnilf"    "strechlk"    "whylook"    
#> [141] "whynwly"     "actnlfly"    "overtime"    "whyleft"     "ptweeks"    
#> [146] "work0375"    "work0380"    "ftotval"     "inctot"      "incwage"    
#> [151] "incbus"      "incfarm"     "incss"       "incwelfr"    "incgov"     
#> [156] "incaloth"    "incretir"    "incssi"      "incdrt"      "incint"     
#> [161] "incunemp"    "incwkcom"    "incvet"      "incsurv"     "incdisab"   
#> [166] "incdivid"    "incrent"     "inceduc"     "incchild"    "incalim"    
#> [171] "incasist"    "incother"    "earnweek"    "gotalch"     "gotregct"   
#> [176] "gotdivid"    "gotelse"     "gotestat"    "gotss"       "gotwelfr"   
#> [181] "gotfedrp"    "gotstlrp"    "gotmilrp"    "gotpvtrp"    "gotrent"    
#> [186] "gotrrrp"     "gotvdisa"    "gotveduc"    "gotvetpa"    "gotvothe"   
#> [191] "gotvpens"    "gotvsurv"    "gotwkcom"    "incdisa1"    "incdisa2"   
#> [196] "inclongj"    "increti1"    "increti2"    "incsurv1"    "incsurv2"   
#> [201] "mthwelfr"    "oincbus"     "oincfarm"    "oincwage"    "srcdisa1"   
#> [206] "srcdisa2"    "srcearn"     "srceduc"     "srcreti1"    "srcreti2"   
#> [211] "srcssi"      "srcsurv1"    "srcsurv2"    "srcunemp"    "srcwelfr"   
#> [216] "srcwkcom"    "vetqa"       "gotunemp"    "offpov"      "offpovuniv" 
#> [221] "offtotval"   "offcutoff"   "offreason"   "poverty"     "cutoff"     
#> [226] "vetstat"     "vetlast"     "milit75"     "milit80"     "disabwrk"   
#> [231] "quitsick"    "migsta1"     "migsta5"     "migrate1"    "migrate5"   
#> [236] "migrat75"    "hcovany"     "hcovpriv"    "hcovpub"     "hinscaid"   
#> [241] "hinscare"    "hinsmil"     "inclugh"     "paidgh"      "higroup"    
#> [246] "himcaid"     "himcare"     "hichamp"     "hiother"     "whoelsgh"   
#> [251] "whoelsoi"    "phinsur"     "phiown"      "phispous"    "phihhkid"   
#> [256] "phinhkid"    "phiothr"     "phiself"     "covergh"     "coverpi"    
#> [261] "kidpriv"     "kidcaid"     "ftype"       "wkstat"      "hrsworkorg" 
#> [266] "famkind"     "eligorg"

# Select a few variables
cpsmar1983 %>% 
  select(year, statefip, age, sex, race, educ, fullpart) 
#> Source: local data frame [162,635 x 7]
#> 
#>    year statefip age sex race educ fullpart
#> 1  1983       23  22   1  100   31        2
#> 2  1983       23  19   2  100   50        0
#> 3  1983       23   1   2  100    1        0
#> 4  1983       23  28   1  100   31        1
#> 5  1983       23  27   2  100   72        1
#> 6  1983       23   8   1  100    1        0
#> 7  1983       23   6   2  100    1        0
#> 8  1983       23  29   2  100   31        0
#> 9  1983       23  10   1  100    1        0
#> 10 1983       23   8   2  100    1        0
#> ..  ...      ... ... ...  ...  ...      ...

# Each variable is a "labelled" vector (from the `haven` package)
cpsmar1984$sex %>% str
#> Class 'labelled'  atomic [1:161167] 1 2 1 1 2 1 2 1 1 2 ...
#>   ..- attr(*, "label")= chr "Sex"
#>   ..- attr(*, "labels")= Named int [1:3] 1 2 9
#>   .. ..- attr(*, "names")= chr [1:3] "Male" "Female" "NIU"
attr(cpsmar1984$sex, "label") # like Stata's label
#> [1] "Sex"
attr(cpsmar1984$sex, "labels") # like Stata's label values
#>   Male Female    NIU 
#>      1      2      9
```
