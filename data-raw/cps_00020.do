* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                   ///
  str     rectype      1-1      ///
  int     year         2-5      ///
  long    serial       6-10     ///
  byte    mish         11-11    ///
  byte    numprec      12-13    ///
  float   hwtsupp      14-23    ///
  double  hrhhid       24-38    ///
  byte    huhhnum      39-40    ///
  byte    gq           41-41    ///
  byte    hhintype     42-42    ///
  byte    region       43-44    ///
  byte    statefip     45-46    ///
  byte    statecensus  47-48    ///
  byte    asecflag     49-49    ///
  byte    metro        50-50    ///
  int     metarea      51-54    ///
  byte    farm         55-55    ///
  byte    ownershp     56-57    ///
  double  hhincome     58-65    ///
  byte    pubhous      66-66    ///
  byte    rentsub      67-67    ///
  byte    heatsub      68-68    ///
  int     heatval      69-72    ///
  byte    heatpay      73-73    ///
  byte    noheat       74-74    ///
  byte    foodstmp     75-75    ///
  byte    stampno      76-76    ///
  byte    stampmo      77-78    ///
  long    stampval     79-83    ///
  byte    atelunch     84-85    ///
  byte    lunchsub     86-86    ///
  byte    frelunch     87-88    ///
  byte    unitsstr     89-90    ///
  byte    fuelheat     91-91    ///
  byte    phone        92-92    ///
  byte    nfams        93-94    ///
  byte    ncouples     95-95    ///
  byte    nmothers     96-96    ///
  byte    nfathers     97-97    ///
  float   cpi99        98-101   ///
  byte    month        102-103  ///
  byte    pernum       104-105  ///
  byte    hiurule      106-106  ///
  byte    hiunpers     107-108  ///
  double  hiuid        109-116  ///
  int     hiufpginc    117-120  ///
  long    hiufpgbase   121-125  ///
  float   wtsupp       126-135  ///
  byte    lineno       136-137  ///
  double  hinswt       138-146  ///
  byte    momloc       147-148  ///
  byte    stepmom      149-149  ///
  byte    momrule      150-150  ///
  byte    poploc       151-152  ///
  byte    steppop      153-153  ///
  byte    poprule      154-154  ///
  byte    sploc        155-156  ///
  byte    sprule       157-157  ///
  byte    famsize      158-159  ///
  byte    nchild       160-160  ///
  byte    nchlt5       161-161  ///
  byte    famunit      162-163  ///
  byte    eldch        164-165  ///
  byte    yngch        166-167  ///
  byte    nsibs        168-168  ///
  int     relate       169-172  ///
  byte    age          173-174  ///
  byte    sex          175-175  ///
  int     race         176-178  ///
  byte    marst        179-179  ///
  byte    popstat      180-180  ///
  int     hispan       181-183  ///
  int     educ         184-186  ///
  int     higrade      187-189  ///
  byte    colleg75     190-190  ///
  byte    colleg80     191-191  ///
  byte    schlcoll     192-192  ///
  byte    empstat      193-194  ///
  byte    labforce     195-195  ///
  int     occ          196-199  ///
  int     occ1990      200-202  ///
  int     ind1990      203-205  ///
  int     occ1950      206-208  ///
  int     ind          209-212  ///
  int     ind1950      213-215  ///
  byte    classwkr     216-217  ///
  int     occly        218-221  ///
  int     occ50ly      222-224  ///
  int     indly        225-228  ///
  int     ind50ly      229-231  ///
  byte    classwly     232-233  ///
  byte    wkswork1     234-235  ///
  byte    wkswork2     236-236  ///
  byte    hrswork      237-238  ///
  byte    uhrswork     239-240  ///
  byte    wksunem1     241-242  ///
  byte    wksunem2     243-243  ///
  byte    absent       244-244  ///
  byte    looking      245-245  ///
  byte    durunem2     246-247  ///
  int     durunemp     248-250  ///
  byte    fullpart     251-251  ///
  byte    nwlookwk     252-253  ///
  float   hourwage     254-257  ///
  byte    paidhour     258-258  ///
  byte    pension      259-259  ///
  byte    whyunemp     260-260  ///
  byte    firmsize     261-261  ///
  byte    whyabsnt     262-263  ///
  byte    majoract     264-264  ///
  byte    wantjob      265-265  ///
  byte    blvenowk     266-266  ///
  byte    cantfind     267-267  ///
  byte    lackschl     268-268  ///
  byte    wrongage     269-269  ///
  byte    handicap     270-270  ///
  byte    kidduty      271-271  ///
  byte    famduty      272-272  ///
  byte    schlduty     273-273  ///
  byte    ilhealth     274-274  ///
  byte    othereas     275-275  ///
  byte    unkreasn     276-276  ///
  byte    fwkads       277-277  ///
  byte    fwkemplr     278-278  ///
  byte    fwkother     279-279  ///
  byte    fwkpubag     280-280  ///
  byte    fwkpvtag     281-281  ///
  byte    fwkrelat     282-282  ///
  byte    intenfwk     283-283  ///
  byte    whyptly      284-284  ///
  int     whyptlwk     285-287  ///
  byte    usftablw     288-288  ///
  byte    usftptlw     289-289  ///
  byte    lkwkftpt     290-290  ///
  byte    payifabs     291-291  ///
  byte    numemps      292-292  ///
  byte    wnftlook     293-294  ///
  byte    wnlwnilf     295-296  ///
  byte    strechlk     297-297  ///
  byte    whylook      298-298  ///
  byte    whynwly      299-299  ///
  byte    actnlfly     300-301  ///
  byte    overtime     302-302  ///
  byte    whyleft      303-303  ///
  byte    ptweeks      304-305  ///
  byte    work0375     306-306  ///
  byte    work0380     307-307  ///
  double  ftotval      308-317  ///
  double  inctot       318-325  ///
  long    incwage      326-332  ///
  long    incbus       333-339  ///
  long    incfarm      340-346  ///
  long    incss        347-351  ///
  long    incwelfr     352-356  ///
  long    incgov       357-361  ///
  long    incaloth     362-366  ///
  long    incretir     367-372  ///
  long    incssi       373-377  ///
  long    incdrt       378-382  ///
  long    incint       383-387  ///
  long    incunemp     388-392  ///
  long    incwkcom     393-397  ///
  long    incvet       398-402  ///
  long    incsurv      403-408  ///
  long    incdisab     409-414  ///
  long    incdivid     415-420  ///
  long    incrent      421-425  ///
  long    inceduc      426-430  ///
  long    incchild     431-435  ///
  long    incalim      436-440  ///
  long    incasist     441-445  ///
  long    incother     446-450  ///
  float   earnweek     451-458  ///
  byte    gotalch      459-459  ///
  byte    gotregct     460-460  ///
  byte    gotdivid     461-461  ///
  byte    gotelse      462-462  ///
  byte    gotestat     463-463  ///
  byte    gotss        464-464  ///
  byte    gotwelfr     465-465  ///
  byte    gotfedrp     466-466  ///
  byte    gotstlrp     467-467  ///
  byte    gotmilrp     468-468  ///
  byte    gotpvtrp     469-469  ///
  byte    gotrent      470-470  ///
  byte    gotrrrp      471-471  ///
  byte    gotvdisa     472-472  ///
  byte    gotveduc     473-473  ///
  byte    gotvetpa     474-474  ///
  byte    gotvothe     475-475  ///
  byte    gotvpens     476-476  ///
  byte    gotvsurv     477-477  ///
  byte    gotwkcom     478-478  ///
  long    incdisa1     479-483  ///
  long    incdisa2     484-488  ///
  long    inclongj     489-495  ///
  long    increti1     496-500  ///
  long    increti2     501-505  ///
  long    incsurv1     506-510  ///
  long    incsurv2     511-515  ///
  long    mthwelfr     516-520  ///
  long    oincbus      521-526  ///
  long    oincfarm     527-532  ///
  long    oincwage     533-539  ///
  byte    srcdisa1     540-541  ///
  byte    srcdisa2     542-543  ///
  byte    srcearn      544-544  ///
  byte    srceduc      545-545  ///
  byte    srcreti1     546-546  ///
  byte    srcreti2     547-547  ///
  byte    srcssi       548-548  ///
  byte    srcsurv1     549-550  ///
  byte    srcsurv2     551-552  ///
  byte    srcunemp     553-553  ///
  byte    srcwelfr     554-554  ///
  byte    srcwkcom     555-555  ///
  byte    vetqa        556-556  ///
  byte    gotunemp     557-557  ///
  byte    offpov       558-559  ///
  byte    offpovuniv   560-561  ///
  double  offtotval    562-571  ///
  long    offcutoff    572-577  ///
  byte    offreason    578-579  ///
  byte    poverty      580-581  ///
  long    cutoff       582-587  ///
  byte    vetstat      588-588  ///
  byte    vetlast      589-590  ///
  byte    milit75      591-591  ///
  byte    milit80      592-592  ///
  byte    disabwrk     593-593  ///
  byte    quitsick     594-594  ///
  byte    migsta1      595-596  ///
  byte    migsta5      597-598  ///
  byte    migrate1     599-599  ///
  byte    migrate5     600-601  ///
  byte    migrat75     602-603  ///
  byte    hcovany      604-604  ///
  byte    hcovpriv     605-605  ///
  byte    hcovpub      606-606  ///
  byte    hinscaid     607-607  ///
  byte    hinscare     608-608  ///
  byte    hinsmil      609-609  ///
  byte    inclugh      610-610  ///
  byte    paidgh       611-612  ///
  byte    higroup      613-613  ///
  byte    himcaid      614-614  ///
  byte    himcare      615-615  ///
  byte    hichamp      616-616  ///
  byte    hiother      617-617  ///
  byte    whoelsgh     618-618  ///
  byte    whoelsoi     619-619  ///
  byte    phinsur      620-620  ///
  byte    phiown       621-621  ///
  byte    phispous     622-622  ///
  byte    phihhkid     623-623  ///
  byte    phinhkid     624-624  ///
  byte    phiothr      625-625  ///
  byte    phiself      626-626  ///
  byte    covergh      627-627  ///
  byte    coverpi      628-628  ///
  byte    kidpriv      629-629  ///
  byte    kidcaid      630-630  ///
  byte    ftype        631-631  ///
  byte    wkstat       632-632  ///
  int     hrsworkorg   633-635  ///
  byte    famkind      636-636  ///
  byte    eligorg      637-637  ///
  using `"cps_00020.dat"'

replace hwtsupp     = hwtsupp     / 10000
replace cpi99       = cpi99       / 1000
replace wtsupp      = wtsupp      / 10000
replace hourwage    = hourwage    / 100
replace earnweek    = earnweek    / 100

format hwtsupp     %10.4f
format hrhhid      %15.0f
format hhincome    %8.0f
format cpi99       %4.3f
format hiuid       %8.0f
format wtsupp      %10.4f
format hinswt      %9.0f
format hourwage    %4.2f
format ftotval     %10.0f
format inctot      %8.0f
format earnweek    %8.2f
format offtotval   %10.0f

label var rectype     `"Record type"'
label var year        `"Survey year"'
label var serial      `"Household serial number"'
label var mish        `"Month in sample, household level"'
label var numprec     `"Number of person records following"'
label var hwtsupp     `"Household weight, Supplement"'
label var hrhhid      `"Household ID, part 1"'
label var huhhnum     `"Household number"'
label var gq          `"Group Quarters status"'
label var hhintype    `"Type of household"'
label var region      `"Region and division"'
label var statefip    `"State (FIPS code)"'
label var statecensus `"State (Census code)"'
label var asecflag    `"Flag for ASEC"'
label var metro       `"Metropolitan central city status"'
label var metarea     `"Metropolitan area"'
label var farm        `"Farm"'
label var ownershp    `"Ownership of dwelling"'
label var hhincome    `"Total household income"'
label var pubhous     `"Living in public housing"'
label var rentsub     `"Paying lower rent due to government subsidy"'
label var heatsub     `"Received energy subsidy"'
label var heatval     `"Value of energy subsidy"'
label var heatpay     `"Means of payment of energy subsidy"'
label var noheat      `"Lacked heat or unable to pay fuel bill"'
label var foodstmp    `"Food stamp recipiency"'
label var stampno     `"Number of persons covered by food stamps"'
label var stampmo     `"Number of months received food stamps"'
label var stampval    `"Total value of food stamps"'
label var atelunch    `"Number of children who ate complete school lunch"'
label var lunchsub    `"Government school lunch food subsidy"'
label var frelunch    `"Number of children with government school lunch subsidy"'
label var unitsstr    `"Units in structure"'
label var fuelheat    `"Home heating fuel"'
label var phone       `"Telephone availability"'
label var nfams       `"Number of families in household"'
label var ncouples    `"Number of married couples in household"'
label var nmothers    `"Number of mothers in household"'
label var nfathers    `"Number of fathers in household"'
label var cpi99       `"CPI-U adjustment factor to 1999 dollars"'
label var month       `"Month"'
label var pernum      `"Person number in sample unit"'
label var hiurule     `"HIU pointer rule"'
label var hiunpers    `"HIU number of persons"'
label var hiuid       `"HIU identification"'
label var hiufpginc   `"Federal poverty guidelines (increment)"'
label var hiufpgbase  `"Federal poverty guidelines (base)"'
label var wtsupp      `"Supplement Weight"'
label var lineno      `"Line number on original form"'
label var hinswt      `"Summary health insurance weight"'
label var momloc      `"Mother's location in the household"'
label var stepmom     `"Probable step/adopted mother"'
label var momrule     `"Rule for linking mother"'
label var poploc      `"Father's location in the household"'
label var steppop     `"Probable step/adopted father"'
label var poprule     `"Rule for linking father"'
label var sploc       `"Spouse's location in household"'
label var sprule      `"Rule for linking spouse"'
label var famsize     `"Number of own family members in hh"'
label var nchild      `"Number of own children in household"'
label var nchlt5      `"Number of own children under age 5 in hh"'
label var famunit     `"Family unit membership"'
label var eldch       `"Age of eldest own child in household"'
label var yngch       `"Age of youngest own child in household"'
label var nsibs       `"Number of own siblings in household"'
label var relate      `"Relationship to household head"'
label var age         `"Age"'
label var sex         `"Sex"'
label var race        `"Race"'
label var marst       `"Marital status"'
label var popstat     `"Adult civilian, armed forces, or child"'
label var hispan      `"Hispanic origin"'
label var educ        `"Educational attainment recode"'
label var higrade     `"Highest grade of school"'
label var colleg75    `"Attending college in March 1975"'
label var colleg80    `"Attending college in March 1980"'
label var schlcoll    `"School or college attendance"'
label var empstat     `"Employment status"'
label var labforce    `"Labor force status"'
label var occ         `"Occupation"'
label var occ1990     `"Occupation, 1990 basis"'
label var ind1990     `"Industry, 1990 basis"'
label var occ1950     `"Occupation, 1950 basis"'
label var ind         `"Industry"'
label var ind1950     `"Industry, 1950 basis"'
label var classwkr    `"Class of worker"'
label var occly       `"Occupation last year"'
label var occ50ly     `"Occupation last year, 1950 basis"'
label var indly       `"Industry last year"'
label var ind50ly     `"Industry last year, 1950 basis"'
label var classwly    `"Class of worker last year"'
label var wkswork1    `"Weeks worked last year"'
label var wkswork2    `"Weeks worked last year, intervalled"'
label var hrswork     `"Hours worked last week"'
label var uhrswork    `"Usual hours worked per week (last yr)"'
label var wksunem1    `"Weeks unemployed last year"'
label var wksunem2    `"Weeks unemployed last year, intervalled"'
label var absent      `"Absent from work last week"'
label var looking     `"Looking for work"'
label var durunem2    `"Continuous weeks unemployed, intervalled"'
label var durunemp    `"Continuous weeks unemployed"'
label var fullpart    `"Worked full or part time last year"'
label var nwlookwk    `"Weeks looked for work last year (didn't work)"'
label var hourwage    `"Hourly wage"'
label var paidhour    `"Paid by the hour"'
label var pension     `"Pension plan at work"'
label var whyunemp    `"Reason for unemployment"'
label var firmsize    `"Number of employees"'
label var whyabsnt    `"Reason for absence from work"'
label var majoract    `"Major activity preceding week"'
label var wantjob     `"Want regular job now"'
label var blvenowk    `"Believe no work available"'
label var cantfind    `"Could not find work"'
label var lackschl    `"Lack schooling"'
label var wrongage    `"Employer thinks too young or old"'
label var handicap    `"Other personal handicap in finding work"'
label var kidduty     `"Lack of childcare prevents finding work"'
label var famduty     `"Family responsibilities prevent finding work"'
label var schlduty    `"School or training responsibilities prevent finding work"'
label var ilhealth    `"Poor health or disability prevents finding work"'
label var othereas    `"Have other reason for not finding work"'
label var unkreasn    `"Don't know reason for not finding work"'
label var fwkads      `"Placed or checked ads to find work"'
label var fwkemplr    `"Checked with employer for work"'
label var fwkother    `"Used other methods to find work"'
label var fwkpubag    `"Checked public employment agency for work"'
label var fwkpvtag    `"Checked private employment agency for work"'
label var fwkrelat    `"Checked with friends and relatives for work"'
label var intenfwk    `"Intend to find work in the next 12 months"'
label var whyptly     `"Reason for working part-time last year"'
label var whyptlwk    `"Reason for working part time last week"'
label var usftablw    `"Usually work full time (absent last week)"'
label var usftptlw    `"Usually work full time (part time last week)"'
label var lkwkftpt    `"Looking for full or part-time job"'
label var payifabs    `"Paid if absent from work last week"'
label var numemps     `"Number of employers last year"'
label var wnftlook    `"When last worked full time 2 consecutive weeks (looking last week)"'
label var wnlwnilf    `"When last worked for pay (NILF last week)"'
label var strechlk    `"Stretches of looking for work last year"'
label var whylook     `"Reason started looking for work"'
label var whynwly     `"Reason not working last year"'
label var actnlfly    `"Activity when not in labor force last year (part-year workers)"'
label var overtime    `"Worked overtime or multiple jobs last week"'
label var whyleft     `"Reason left last job (NILF now)"'
label var ptweeks     `"Weeks working part time last year"'
label var work0375    `"Working during March 1975"'
label var work0380    `"Working in March 1980"'
label var ftotval     `"Total family income"'
label var inctot      `"Total personal income"'
label var incwage     `"Wage and salary income"'
label var incbus      `"Non-farm business income"'
label var incfarm     `"Farm income"'
label var incss       `"Social Security income"'
label var incwelfr    `"Welfare (public assistance) income"'
label var incgov      `"Income from other govt programs"'
label var incaloth    `"Income from alimony, contributions, other"'
label var incretir    `"Retirement income"'
label var incssi      `"Income from SSI"'
label var incdrt      `"Income from dividends, rent, trusts"'
label var incint      `"Income from interest"'
label var incunemp    `"Income from unemployment benefits"'
label var incwkcom    `"Income from worker's compensation"'
label var incvet      `"Income from veteran's benefits"'
label var incsurv     `"Income from survivor's benefits"'
label var incdisab    `"Income from disability benefits"'
label var incdivid    `"Income from dividends"'
label var incrent     `"Income from rent"'
label var inceduc     `"Income from educational assistance"'
label var incchild    `"Income from child support"'
label var incalim     `"Income from alimony"'
label var incasist    `"Income from assistance"'
label var incother    `"Income from other Source not specified"'
label var earnweek    `"Weekly earnings"'
label var gotalch     `"Received alimony or child support income"'
label var gotregct    `"Received income from regular contributions"'
label var gotdivid    `"Received dividend income"'
label var gotelse     `"Received income from anything else not already covered"'
label var gotestat    `"Received estates and trusts income"'
label var gotss       `"Received social security"'
label var gotwelfr    `"Received welfare (public assistance) income"'
label var gotfedrp    `"Received federal government pension"'
label var gotstlrp    `"Received state and local government pension"'
label var gotmilrp    `"Received military retirement pension"'
label var gotpvtrp    `"Received private retirement pension"'
label var gotrent     `"Received rental or royalties income"'
label var gotrrrp     `"Received railroad retirement pension"'
label var gotvdisa    `"Received veterans' disability compensation"'
label var gotveduc    `"Received veterans' education assistance"'
label var gotvetpa    `"Received veterans' payments"'
label var gotvothe    `"Received other veterans' payments"'
label var gotvpens    `"Received veterans' pension"'
label var gotvsurv    `"Received veterans' survivor benefits"'
label var gotwkcom    `"Received worker's compensation"'
label var incdisa1    `"Disability income from first source"'
label var incdisa2    `"Disability income from second source"'
label var inclongj    `"Earnings from longest job"'
label var increti1    `"Retirement income from first source"'
label var increti2    `"Retirement income from second source"'
label var incsurv1    `"Survivor benefits income from first source"'
label var incsurv2    `"Survivor benefits income from second source"'
label var mthwelfr    `"Number of months received welfare income"'
label var oincbus     `"Earnings from other work included business self-employment earnings"'
label var oincfarm    `"Earnings from other work included farm self-employment earnings"'
label var oincwage    `"Earnings from other work included wage and salary earnings"'
label var srcdisa1    `"First source of disability income"'
label var srcdisa2    `"Second source of disability income"'
label var srcearn     `"Source of earnings from longest job"'
label var srceduc     `"Source of educational assistance"'
label var srcreti1    `"First source of retirement income"'
label var srcreti2    `"Second source of retirement income"'
label var srcssi      `"Source of supplementary security income"'
label var srcsurv1    `"First source of survivor benefits"'
label var srcsurv2    `"Second source of survivor benefits"'
label var srcunemp    `"Source of unemployment income"'
label var srcwelfr    `"Source of welfare income"'
label var srcwkcom    `"Source of workmen's compensation"'
label var vetqa       `"Required to fill out annual income questionnaire for veterans' administration"'
label var gotunemp    `"Received unemployment compensation"'
label var offpov      `"Official Poverty Status (IPUMS constructed)"'
label var offpovuniv  `"Official Poverty Rate Universe"'
label var offtotval   `"Total Family Income for Replicating Official Poverty Rates"'
label var offcutoff   `"Official Poverty Rate Cutoff"'
label var offreason   `"Reason for Discrepancy between OFFPOV and POVERTY"'
label var poverty     `"Original poverty status (PUMS original)"'
label var cutoff      `"Cutoff for original poverty status, in dollars"'
label var vetstat     `"Veteran status"'
label var vetlast     `"Veteran's most recent period of service"'
label var milit75     `"Armed forces in March 1975"'
label var milit80     `"Armed forces in March 1980"'
label var disabwrk    `"Work disability"'
label var quitsick    `"Quit job or retired for health reasons"'
label var migsta1     `"State of residence 1 year ago"'
label var migsta5     `"State of residence 5 years ago"'
label var migrate1    `"Migration status, 1 year"'
label var migrate5    `"Migration status, 5 years"'
label var migrat75    `"Migration status, 1975 to this year"'
label var hcovany     `"Any insurance, public or private (summary)"'
label var hcovpriv    `"Any private insurance (summary)"'
label var hcovpub     `"Any public insurance (summary)"'
label var hinscaid    `"Any Medicaid/SCHIP/other public insurance (summary)"'
label var hinscare    `"Medicare coverage (summary)"'
label var hinsmil     `"Any military insurance (summary)"'
label var inclugh     `"Included in employer group healthplan  last year"'
label var paidgh      `"Employer paid for group health plan"'
label var higroup     `"Covered by employment-based group health last year"'
label var himcaid     `"Covered by Medicaid last year"'
label var himcare     `"Covered by Medicare last year"'
label var hichamp     `"Covered by military health insurance last year"'
label var hiother     `"Covered by other health insurance last year"'
label var whoelsgh    `"Others covered by group health insurance last year"'
label var whoelsoi    `"Others covered by other health insurance last year"'
label var phinsur     `"Reported covered by private health insurance last year"'
label var phiown      `"Private health insurance in own name last year"'
label var phispous    `"Spouse covered by private health insurance last year"'
label var phihhkid    `"Child in respondent's home covered by private health insurance"'
label var phinhkid    `"Children not in household covered by private health insurance"'
label var phiothr     `"Other(s) covered by private health insurance"'
label var phiself     `"Self only covered by private health insurance"'
label var covergh     `"Covered by group health insurance, last year"'
label var coverpi     `"Covered by private health insurance, last year"'
label var kidpriv     `"Child covered by private health insurance, last year"'
label var kidcaid     `"Child covered by Medicaid, last year"'
label var ftype       `"Family Type"'
label var wkstat      `"Full or part time status"'
label var hrsworkorg  `"Hours worked per week, outgoing rotation groups"'
label var famkind     `"Kind of family"'
label var eligorg     `"(Earnings) eligibility flag"'

label define mish_lbl 1 `"One"'
label define mish_lbl 2 `"Two"', add
label define mish_lbl 3 `"Three"', add
label define mish_lbl 4 `"Four"', add
label define mish_lbl 5 `"Five"', add
label define mish_lbl 6 `"Six"', add
label define mish_lbl 7 `"Seven"', add
label define mish_lbl 8 `"Eight"', add
label values mish mish_lbl

label define huhhnum_lbl 00 `"00"'
label define huhhnum_lbl 01 `"01"', add
label define huhhnum_lbl 02 `"02"', add
label define huhhnum_lbl 03 `"03"', add
label define huhhnum_lbl 04 `"04"', add
label define huhhnum_lbl 05 `"05"', add
label define huhhnum_lbl 06 `"06"', add
label define huhhnum_lbl 07 `"07"', add
label define huhhnum_lbl 08 `"08"', add
label values huhhnum huhhnum_lbl

label define gq_lbl 0 `"NIU (Vacant units)"'
label define gq_lbl 1 `"Households"', add
label define gq_lbl 2 `"Group Quarters"', add
label values gq gq_lbl

label define hhintype_lbl 1 `"Interview"'
label define hhintype_lbl 2 `"Type A non-interview"', add
label define hhintype_lbl 3 `"Type B/C non-interview"', add
label values hhintype hhintype_lbl

label define region_lbl 11 `"New England Division"'
label define region_lbl 12 `"Middle Atlantic Division"', add
label define region_lbl 21 `"East North Central Division"', add
label define region_lbl 22 `"West North Central Division"', add
label define region_lbl 31 `"South Atlantic Division"', add
label define region_lbl 32 `"East South Central Division"', add
label define region_lbl 33 `"West South Central Division"', add
label define region_lbl 41 `"Mountain Division"', add
label define region_lbl 42 `"Pacific Division"', add
label define region_lbl 97 `"State not identified"', add
label values region region_lbl

label define statefip_lbl 01 `"Alabama"'
label define statefip_lbl 02 `"Alaska"', add
label define statefip_lbl 04 `"Arizona"', add
label define statefip_lbl 05 `"Arkansas"', add
label define statefip_lbl 06 `"California"', add
label define statefip_lbl 08 `"Colorado"', add
label define statefip_lbl 09 `"Connecticut"', add
label define statefip_lbl 10 `"Delaware"', add
label define statefip_lbl 11 `"District of Columbia"', add
label define statefip_lbl 12 `"Florida"', add
label define statefip_lbl 13 `"Georgia"', add
label define statefip_lbl 15 `"Hawaii"', add
label define statefip_lbl 16 `"Idaho"', add
label define statefip_lbl 17 `"Illinois"', add
label define statefip_lbl 18 `"Indiana"', add
label define statefip_lbl 19 `"Iowa"', add
label define statefip_lbl 20 `"Kansas"', add
label define statefip_lbl 21 `"Kentucky"', add
label define statefip_lbl 22 `"Louisiana"', add
label define statefip_lbl 23 `"Maine"', add
label define statefip_lbl 24 `"Maryland"', add
label define statefip_lbl 25 `"Massachusetts"', add
label define statefip_lbl 26 `"Michigan"', add
label define statefip_lbl 27 `"Minnesota"', add
label define statefip_lbl 28 `"Mississippi"', add
label define statefip_lbl 29 `"Missouri"', add
label define statefip_lbl 30 `"Montana"', add
label define statefip_lbl 31 `"Nebraska"', add
label define statefip_lbl 32 `"Nevada"', add
label define statefip_lbl 33 `"New Hampshire"', add
label define statefip_lbl 34 `"New Jersey"', add
label define statefip_lbl 35 `"New Mexico"', add
label define statefip_lbl 36 `"New York"', add
label define statefip_lbl 37 `"North Carolina"', add
label define statefip_lbl 38 `"North Dakota"', add
label define statefip_lbl 39 `"Ohio"', add
label define statefip_lbl 40 `"Oklahoma"', add
label define statefip_lbl 41 `"Oregon"', add
label define statefip_lbl 42 `"Pennsylvania"', add
label define statefip_lbl 44 `"Rhode Island"', add
label define statefip_lbl 45 `"South Carolina"', add
label define statefip_lbl 46 `"South Dakota"', add
label define statefip_lbl 47 `"Tennessee"', add
label define statefip_lbl 48 `"Texas"', add
label define statefip_lbl 49 `"Utah"', add
label define statefip_lbl 50 `"Vermont"', add
label define statefip_lbl 51 `"Virginia"', add
label define statefip_lbl 53 `"Washington"', add
label define statefip_lbl 54 `"West Virginia"', add
label define statefip_lbl 55 `"Wisconsin"', add
label define statefip_lbl 56 `"Wyoming"', add
label define statefip_lbl 61 `"Maine-New Hampshire-Vermont"', add
label define statefip_lbl 65 `"Montana-Idaho-Wyoming"', add
label define statefip_lbl 68 `"Alaska-Hawaii"', add
label define statefip_lbl 69 `"Nebraska-North Dakota-South Dakota"', add
label define statefip_lbl 70 `"Maine-Massachusetts-New Hampshire-Rhode Island-Vermont"', add
label define statefip_lbl 71 `"Michigan-Wisconsin"', add
label define statefip_lbl 72 `"Minnesota-Iowa"', add
label define statefip_lbl 73 `"Nebraska-North Dakota-South Dakota-Kansas"', add
label define statefip_lbl 74 `"Delaware-Virginia"', add
label define statefip_lbl 75 `"North Carolina-South Carolina"', add
label define statefip_lbl 76 `"Alabama-Mississippi"', add
label define statefip_lbl 77 `"Arkansas-Oklahoma"', add
label define statefip_lbl 78 `"Arizona-New Mexico-Colorado"', add
label define statefip_lbl 79 `"Idaho-Wyoming-Utah-Montana-Nevada"', add
label define statefip_lbl 80 `"Alaska-Washington-Hawaii"', add
label define statefip_lbl 81 `"New Hampshire-Maine-Vermont-Rhode Island"', add
label define statefip_lbl 83 `"South Carolina-Georgia"', add
label define statefip_lbl 84 `"Kentucky-Tennessee"', add
label define statefip_lbl 85 `"Arkansas-Louisiana-Oklahoma"', add
label define statefip_lbl 87 `"Iowa-N Dakota-S Dakota-Nebraska-Kansas-Minnesota-Missouri"', add
label define statefip_lbl 88 `"Washington-Oregon-Alaska-Hawaii"', add
label define statefip_lbl 89 `"Montana-Wyoming-Colorado-New Mexico-Utah-Nevada-Arizona"', add
label define statefip_lbl 90 `"Delaware-Maryland-Virginia-West Virginia"', add
label define statefip_lbl 99 `"State not identified"', add
label values statefip statefip_lbl

label define statecensus_lbl 00 `"Unknown"'
label define statecensus_lbl 11 `"Maine"', add
label define statecensus_lbl 12 `"New Hampshire"', add
label define statecensus_lbl 13 `"Vermont"', add
label define statecensus_lbl 14 `"Massachusetts"', add
label define statecensus_lbl 15 `"Rhode Island"', add
label define statecensus_lbl 16 `"Connecticut"', add
label define statecensus_lbl 21 `"New York"', add
label define statecensus_lbl 22 `"New Jersey"', add
label define statecensus_lbl 23 `"Pennsylvania"', add
label define statecensus_lbl 31 `"Ohio"', add
label define statecensus_lbl 32 `"Indiana"', add
label define statecensus_lbl 33 `"Illinois"', add
label define statecensus_lbl 34 `"Michigan"', add
label define statecensus_lbl 35 `"Wisconsin"', add
label define statecensus_lbl 41 `"Minnesota"', add
label define statecensus_lbl 42 `"Iowa"', add
label define statecensus_lbl 43 `"Missouri"', add
label define statecensus_lbl 44 `"North Dakota"', add
label define statecensus_lbl 45 `"South Dakota"', add
label define statecensus_lbl 46 `"Nebraska"', add
label define statecensus_lbl 47 `"Kansas"', add
label define statecensus_lbl 51 `"Delaware"', add
label define statecensus_lbl 52 `"Maryland"', add
label define statecensus_lbl 53 `"District of Columbia"', add
label define statecensus_lbl 54 `"Virginia"', add
label define statecensus_lbl 55 `"West Virginia"', add
label define statecensus_lbl 56 `"North Carolina"', add
label define statecensus_lbl 57 `"South Carolina"', add
label define statecensus_lbl 58 `"Georgia"', add
label define statecensus_lbl 59 `"Florida"', add
label define statecensus_lbl 61 `"Kentucky"', add
label define statecensus_lbl 62 `"Tennessee"', add
label define statecensus_lbl 63 `"Alabama"', add
label define statecensus_lbl 64 `"Mississippi"', add
label define statecensus_lbl 71 `"Arkansas"', add
label define statecensus_lbl 72 `"Louisiana"', add
label define statecensus_lbl 73 `"Oklahoma"', add
label define statecensus_lbl 74 `"Texas"', add
label define statecensus_lbl 81 `"Montana"', add
label define statecensus_lbl 82 `"Idaho"', add
label define statecensus_lbl 83 `"Wyoming"', add
label define statecensus_lbl 84 `"Colorado"', add
label define statecensus_lbl 85 `"New Mexico"', add
label define statecensus_lbl 86 `"Arizona"', add
label define statecensus_lbl 87 `"Utah"', add
label define statecensus_lbl 88 `"Nevada"', add
label define statecensus_lbl 91 `"Washington"', add
label define statecensus_lbl 92 `"Oregon"', add
label define statecensus_lbl 93 `"California"', add
label define statecensus_lbl 94 `"Alaska"', add
label define statecensus_lbl 95 `"Hawaii"', add
label values statecensus statecensus_lbl

label define asecflag_lbl 1 `"ASEC"'
label define asecflag_lbl 2 `"March Basic"', add
label values asecflag asecflag_lbl

label define metro_lbl 0 `"Not identifiable"'
label define metro_lbl 1 `"Not in metro area"', add
label define metro_lbl 2 `"Central city"', add
label define metro_lbl 3 `"Outside central city"', add
label define metro_lbl 4 `"Central city status unknown"', add
label define metro_lbl 9 `"Missing/Unknown"', add
label values metro metro_lbl

label define metarea_lbl 0080 `"Akron, OH"'
label define metarea_lbl 0120 `"Albany, GA"', add
label define metarea_lbl 0160 `"Albany-Schenectady-Troy, NY"', add
label define metarea_lbl 0200 `"Albuquerque, NM"', add
label define metarea_lbl 0240 `"Allentown-Bethlehem-Easton, PA/NJ"', add
label define metarea_lbl 0280 `"Altoona, PA MSA"', add
label define metarea_lbl 0320 `"Amarillo, TX"', add
label define metarea_lbl 0380 `"Anchorage, AK"', add
label define metarea_lbl 0400 `"Anderson, IN"', add
label define metarea_lbl 0440 `"Ann Arbor, MI"', add
label define metarea_lbl 0450 `"Anniston, AL"', add
label define metarea_lbl 0451 `"Anniston-Oxford, AL"', add
label define metarea_lbl 0460 `"Appleton,Oshkosh-Neenah, WI"', add
label define metarea_lbl 0461 `"Appleton, WI"', add
label define metarea_lbl 0462 `"Oshkosh-Neenah, WI"', add
label define metarea_lbl 0480 `"Asheville, NC"', add
label define metarea_lbl 0500 `"Athens, GA"', add
label define metarea_lbl 0501 `"Athens-Clark County, GA"', add
label define metarea_lbl 0520 `"Atlanta, GA"', add
label define metarea_lbl 0521 `"Atlanta-Sandy Springs-Marietta, GA"', add
label define metarea_lbl 0560 `"Atlantic City, NJ"', add
label define metarea_lbl 0600 `"Augusta-Aiken, GA-SC"', add
label define metarea_lbl 0601 `"Augusta-Richmond County, GA-SC"', add
label define metarea_lbl 0640 `"Austin, TX"', add
label define metarea_lbl 0641 `"Austin-Round Rock, TX"', add
label define metarea_lbl 0680 `"Bakersfield, CA"', add
label define metarea_lbl 0720 `"Baltimore, MD"', add
label define metarea_lbl 0721 `"Baltimore-Towson, MD"', add
label define metarea_lbl 0730 `"Bangor, ME"', add
label define metarea_lbl 0740 `"Barnstable-Yarmouth, MA"', add
label define metarea_lbl 0741 `"Barnstable Town, MA"', add
label define metarea_lbl 0760 `"Baton Rouge, LA"', add
label define metarea_lbl 0780 `"Battle Creek, MI"', add
label define metarea_lbl 0840 `"Beaumont-Port Arthur-Orange, TX"', add
label define metarea_lbl 0841 `"Beaumont-Port Arthur, TX"', add
label define metarea_lbl 0860 `"Bellingham, WA"', add
label define metarea_lbl 0870 `"Benton Harbor, MI"', add
label define metarea_lbl 0871 `"Niles-Benton Harbor, MI"', add
label define metarea_lbl 0880 `"Billings, MT"', add
label define metarea_lbl 0900 `"Bend, OR"', add
label define metarea_lbl 0920 `"Biloxi-Gulfport, MS"', add
label define metarea_lbl 0960 `"Binghamton, NY"', add
label define metarea_lbl 1000 `"Birmingham, AL"', add
label define metarea_lbl 1001 `"Birmingham-Hoover, AL"', add
label define metarea_lbl 1020 `"Bloomington, IN"', add
label define metarea_lbl 1040 `"Bloomington-Normal, IL"', add
label define metarea_lbl 1080 `"Boise City, ID"', add
label define metarea_lbl 1081 `"Boise City-Nampa, ID"', add
label define metarea_lbl 1120 `"Boston, MA"', add
label define metarea_lbl 1121 `"Lawrence-Haverhill. MA/NH"', add
label define metarea_lbl 1122 `"Lowell, MA/NH"', add
label define metarea_lbl 1123 `"Salem-Gloucester, MA"', add
label define metarea_lbl 1124 `"Boston-Cambridge-Quincy, MA-NH"', add
label define metarea_lbl 1130 `"Bowling Green, KY"', add
label define metarea_lbl 1140 `"Bradenton, FL"', add
label define metarea_lbl 1150 `"Bremerton-Silverdale, WA"', add
label define metarea_lbl 1160 `"Bridgeport, CT"', add
label define metarea_lbl 1161 `"Bridgeport-Stamford-Norwalk, CT"', add
label define metarea_lbl 1200 `"Brockton, MA"', add
label define metarea_lbl 1240 `"Brownsville-Harlingen-San Benito,TX"', add
label define metarea_lbl 1241 `"Brownsville-Harlingen, TX"', add
label define metarea_lbl 1280 `"Buffalo-Niagara Falls, NY"', add
label define metarea_lbl 1281 `"Niagara Falls, NY"', add
label define metarea_lbl 1310 `"Burlington, VT"', add
label define metarea_lbl 1311 `"Burlington-South Burlington, VT"', add
label define metarea_lbl 1320 `"Canton, OH"', add
label define metarea_lbl 1321 `"Canton-Massillon, OH"', add
label define metarea_lbl 1360 `"Cedar Rapids, IA"', add
label define metarea_lbl 1400 `"Champaign-Urbana-Rantoul, IL"', add
label define metarea_lbl 1401 `"Champaign-Urbana, IL"', add
label define metarea_lbl 1440 `"Charleston-North Charleston, SC"', add
label define metarea_lbl 1480 `"Charleston, WV"', add
label define metarea_lbl 1520 `"Charlotte-Gastonia-Rock Hill, NC/SC"', add
label define metarea_lbl 1521 `"Charlotte-Gastonia-Concord, NC/SC"', add
label define metarea_lbl 1560 `"Chattanooga, TN/GA"', add
label define metarea_lbl 1600 `"Chicago-Gary-Lake IL"', add
label define metarea_lbl 1601 `"Aurora-Elgin, IL"', add
label define metarea_lbl 1602 `"Gary-Hamond-East Chicago, IN"', add
label define metarea_lbl 1603 `"Joliet, IL"', add
label define metarea_lbl 1604 `"Lake County, IL"', add
label define metarea_lbl 1605 `"Chicago-Naperville-Joliet, IL-IN-WI"', add
label define metarea_lbl 1620 `"Chico,CA"', add
label define metarea_lbl 1640 `"Cincinnati-Hamilton,OH/KY/IN"', add
label define metarea_lbl 1641 `"Cincinnati-Middleton, OH/KY/IN"', add
label define metarea_lbl 1660 `"Clarksville-Hopkinsville,TN/KY"', add
label define metarea_lbl 1661 `"Clarksville, TN/KY, TN/KY"', add
label define metarea_lbl 1680 `"Cleveland, OH"', add
label define metarea_lbl 1681 `"Cleveland-Lorain-Mentor, OH"', add
label define metarea_lbl 1700 `"Coeur d'Alene, ID"', add
label define metarea_lbl 1720 `"Colorado Springs, CO"', add
label define metarea_lbl 1740 `"Columbia, MO"', add
label define metarea_lbl 1760 `"Columbia, SC"', add
label define metarea_lbl 1800 `"Columbus, GA/AL"', add
label define metarea_lbl 1840 `"Columbus, OH"', add
label define metarea_lbl 1880 `"Corpus Christi, TX"', add
label define metarea_lbl 1920 `"Dallas-Fort Worth, TX"', add
label define metarea_lbl 1921 `"Fort Worth-Arlington, TX"', add
label define metarea_lbl 1922 `"Dallas-Fort Worth-Arlington, TX"', add
label define metarea_lbl 1930 `"Danbury, CT"', add
label define metarea_lbl 1960 `"Davenport-Rock Island-Moline, IA/IL"', add
label define metarea_lbl 2000 `"Dayton-Springfield, OH"', add
label define metarea_lbl 2001 `"Springfield, OH"', add
label define metarea_lbl 2002 `"Dayton, OH"', add
label define metarea_lbl 2020 `"Daytona Beach, FL"', add
label define metarea_lbl 2021 `"Deltona-Daytona Beach-Ormond Beach, FL"', add
label define metarea_lbl 2030 `"Decatur, AL"', add
label define metarea_lbl 2040 `"Decatur, IL"', add
label define metarea_lbl 2080 `"Denver-Boulder-Longmont, CO"', add
label define metarea_lbl 2081 `"Boulder-Longmont, CO"', add
label define metarea_lbl 2082 `"Boulder, CO"', add
label define metarea_lbl 2083 `"Denver-Aurora, CO"', add
label define metarea_lbl 2120 `"Des Moines, IA"', add
label define metarea_lbl 2160 `"Detroit, MI"', add
label define metarea_lbl 2161 `"Detroit-Warren-Livonia, MI"', add
label define metarea_lbl 2190 `"Dover, DE"', add
label define metarea_lbl 2240 `"Duluth-Superior, MN/WI"', add
label define metarea_lbl 2241 `"Duluth, MN/WI"', add
label define metarea_lbl 2281 `"Dutchess County, NY"', add
label define metarea_lbl 2290 `"Eau Claire, WI"', add
label define metarea_lbl 2300 `"El Centro, CA"', add
label define metarea_lbl 2310 `"El Paso, TX"', add
label define metarea_lbl 2360 `"Erie, PA"', add
label define metarea_lbl 2400 `"Eugene-Springfield, OR"', add
label define metarea_lbl 2440 `"Evansville, IN/KY"', add
label define metarea_lbl 2520 `"Fargo-Moorhead, ND/MN"', add
label define metarea_lbl 2521 `"Fargo, ND/MN"', add
label define metarea_lbl 2540 `"Farmington, NM"', add
label define metarea_lbl 2560 `"Fayetteville, NC"', add
label define metarea_lbl 2580 `"Fayetteville-Springdale, AR"', add
label define metarea_lbl 2581 `"Fayetteville-Springdale-Rogers, AR-MO"', add
label define metarea_lbl 2600 `"Fitchburg-Leominster, MA"', add
label define metarea_lbl 2601 `"Leominster-Fitchburg-Gardner, MA"', add
label define metarea_lbl 2640 `"Flint, MI"', add
label define metarea_lbl 2650 `"Florence, AL"', add
label define metarea_lbl 2660 `"Florence, SC"', add
label define metarea_lbl 2670 `"Fort Collins-Loveland, CO"', add
label define metarea_lbl 2680 `"Fort Lauderdale-Hollywood-Pompano Beach, FL"', add
label define metarea_lbl 2700 `"Fort Myers-Cape Coral, FL"', add
label define metarea_lbl 2710 `"Fort Pierce, FL"', add
label define metarea_lbl 2711 `"Port St. Lucie-Fort Pierce, FL"', add
label define metarea_lbl 2720 `"Fort Smith, AR/OK"', add
label define metarea_lbl 2750 `"Fort Walton Beach, FL"', add
label define metarea_lbl 2751 `"Fort Walton Beach-Crestview-Destin, FL"', add
label define metarea_lbl 2760 `"Fort Wayne, IN"', add
label define metarea_lbl 2840 `"Fresno, CA"', add
label define metarea_lbl 2880 `"Gadsden, AL"', add
label define metarea_lbl 2900 `"Gainesville, FL"', add
label define metarea_lbl 2920 `"Galveston-Texas City, TX"', add
label define metarea_lbl 3000 `"Grand Rapids, MI"', add
label define metarea_lbl 3001 `"Grand Rapids-Wyoming, MI"', add
label define metarea_lbl 3002 `"Grand Rapids-Muskegon-Holland, MI MSA"', add
label define metarea_lbl 3003 `"Holland-Grand Haven, MI"', add
label define metarea_lbl 3060 `"Greeley, CO"', add
label define metarea_lbl 3080 `"Green Bay, WI"', add
label define metarea_lbl 3120 `"Greensboro-Winston Salem, NC"', add
label define metarea_lbl 3121 `"Winston-Salem, NC"', add
label define metarea_lbl 3122 `"Greensboro-High Point, NC"', add
label define metarea_lbl 3150 `"Greenville, NC"', add
label define metarea_lbl 3160 `"Greenville-Spartanburg-Anderson, SC"', add
label define metarea_lbl 3161 `"Anderson, SC"', add
label define metarea_lbl 3162 `"Greenville, SC"', add
label define metarea_lbl 3163 `"Spartanburg, SC"', add
label define metarea_lbl 3180 `"Hagerstown, MD"', add
label define metarea_lbl 3181 `"Hagerstown-Martinsburg, MD-WV"', add
label define metarea_lbl 3200 `"Hamilton-Middleton, OH"', add
label define metarea_lbl 3240 `"Harrisburg-Lebanon-Carlisle, PA"', add
label define metarea_lbl 3241 `"Harrisburg-Carlisle, PA"', add
label define metarea_lbl 3260 `"Harrisonburg, VA"', add
label define metarea_lbl 3280 `"Hartford-Bristol-Middleton- New Britain, CT"', add
label define metarea_lbl 3283 `"New Britain, CT"', add
label define metarea_lbl 3284 `"Hartford-West Hartford-East Hartford"', add
label define metarea_lbl 3285 `"Hartford, CT"', add
label define metarea_lbl 3290 `"Hickory-Morganton, NC"', add
label define metarea_lbl 3291 `"Hickory-Morganton-Lenoir, NC"', add
label define metarea_lbl 3320 `"Honolulu, HI"', add
label define metarea_lbl 3350 `"Houma-Thibodaux, LA"', add
label define metarea_lbl 3351 `"Houma-Bayou Cane-Thibodaux, LA"', add
label define metarea_lbl 3360 `"Houston-Brazoria,TX"', add
label define metarea_lbl 3361 `"Brazoria, TX"', add
label define metarea_lbl 3362 `"Houston-Baytown-Sugar Land, TX"', add
label define metarea_lbl 3400 `"Huntington-Ashland,WV/KY/OH"', add
label define metarea_lbl 3440 `"Huntsville,AL"', add
label define metarea_lbl 3480 `"Indianapolis, IN"', add
label define metarea_lbl 3500 `"Iowa City, IA"', add
label define metarea_lbl 3520 `"Jackson, MI"', add
label define metarea_lbl 3560 `"Jackson, MS"', add
label define metarea_lbl 3590 `"Jacksonville,FL"', add
label define metarea_lbl 3600 `"Jacksonville, NC"', add
label define metarea_lbl 3610 `"Jamestown-Dunkirk, NY"', add
label define metarea_lbl 3611 `"Jamestown, NY MSA"', add
label define metarea_lbl 3620 `"Janesville-Beloit, WI"', add
label define metarea_lbl 3621 `"Janvesville, WI"', add
label define metarea_lbl 3660 `"Johnson City-Kingsport-Bristol, TN/VA"', add
label define metarea_lbl 3661 `"Johnson City, TN"', add
label define metarea_lbl 3662 `"Kingsport-Bristol, TN-VA"', add
label define metarea_lbl 3680 `"Johnstown, PA"', add
label define metarea_lbl 3710 `"Joplin, MO"', add
label define metarea_lbl 3720 `"Kalamazoo-Portage, MI"', add
label define metarea_lbl 3721 `"Kalamazoo-Battle Creek, MI MSA"', add
label define metarea_lbl 3740 `"Kankakee, IL"', add
label define metarea_lbl 3741 `"Kankakee-Bradley, IL"', add
label define metarea_lbl 3760 `"Kansas City, MO/KS"', add
label define metarea_lbl 3810 `"Killeen-Temple,TX"', add
label define metarea_lbl 3811 `"Killeen-Temple-Fort Hood, TX"', add
label define metarea_lbl 3830 `"Kingston, NY"', add
label define metarea_lbl 3840 `"Knoxville, TN"', add
label define metarea_lbl 3870 `"LaCrosse, WI"', add
label define metarea_lbl 3880 `"Lafayette, LA"', add
label define metarea_lbl 3960 `"Lake Charles, LA"', add
label define metarea_lbl 3980 `"Lakeland-Winterhaven, FL"', add
label define metarea_lbl 4000 `"Lancaster, PA"', add
label define metarea_lbl 4040 `"Lansing-East Lansing, MI"', add
label define metarea_lbl 4080 `"Laredo, TX"', add
label define metarea_lbl 4100 `"Las Cruces, NM"', add
label define metarea_lbl 4120 `"Las Vegas, NV"', add
label define metarea_lbl 4130 `"Las Vegas-Paradise, NM"', add
label define metarea_lbl 4150 `"Lawrence, KS"', add
label define metarea_lbl 4200 `"Lawton, OK"', add
label define metarea_lbl 4280 `"Lexington-Fayette, KY"', add
label define metarea_lbl 4320 `"Lima, OH"', add
label define metarea_lbl 4360 `"Lincoln, NE"', add
label define metarea_lbl 4400 `"Little Rock-North Little Rock, AR"', add
label define metarea_lbl 4420 `"Longview-Marshall, TX"', add
label define metarea_lbl 4421 `"Longview, TX"', add
label define metarea_lbl 4440 `"Lorain-Elyria, OH"', add
label define metarea_lbl 4480 `"Los Angeles-Long Beach, CA"', add
label define metarea_lbl 4481 `"Anaheim-Santa Ana- Garden Grove, CA"', add
label define metarea_lbl 4482 `"Orange County, CA"', add
label define metarea_lbl 4483 `"Los Angeles-Long Beach-Santa Ana, CA"', add
label define metarea_lbl 4520 `"Louisville, KY/IN"', add
label define metarea_lbl 4600 `"Lubbock, TX"', add
label define metarea_lbl 4640 `"Lynchburg, VA"', add
label define metarea_lbl 4680 `"Macon-Warner Robins, GA"', add
label define metarea_lbl 4681 `"Macon, GA"', add
label define metarea_lbl 4682 `"Warner Robins, GA"', add
label define metarea_lbl 4700 `"Madera, CA"', add
label define metarea_lbl 4720 `"Madison, WI"', add
label define metarea_lbl 4760 `"Manchester, NH"', add
label define metarea_lbl 4800 `"Mansfield, OH"', add
label define metarea_lbl 4880 `"McAllen-Edinburg-Pharr-Mission, TX"', add
label define metarea_lbl 4881 `"McAllen-Edinburg-Pharr, TX"', add
label define metarea_lbl 4890 `"Medford, OR"', add
label define metarea_lbl 4900 `"Melbourne-Titusville-Cocoa-Palm Beach, FL"', add
label define metarea_lbl 4901 `"Palm Bay-Melbourne-Titusville, FL"', add
label define metarea_lbl 4920 `"Memphis, TN/AR/MS"', add
label define metarea_lbl 4940 `"Merced, CA"', add
label define metarea_lbl 5000 `"Miami-Hialeah, FL"', add
label define metarea_lbl 5001 `"Miami-Fort Lauderdale-Miami Beach, FL"', add
label define metarea_lbl 5020 `"Michigan City-La Porte, IN"', add
label define metarea_lbl 5080 `"Milwaukee, WI"', add
label define metarea_lbl 5081 `"Milwaukee-Waukesha-West Allis, WI"', add
label define metarea_lbl 5120 `"Minneapolis-St. Paul, MN"', add
label define metarea_lbl 5121 `"Minneapolis-St. Paul-Bloomington, MN/WI"', add
label define metarea_lbl 5160 `"Mobile, AL"', add
label define metarea_lbl 5170 `"Modesto, CA"', add
label define metarea_lbl 5190 `"Monmouth-Ocean, NJ"', add
label define metarea_lbl 5200 `"Monroe, LA"', add
label define metarea_lbl 5220 `"Monroe, MI"', add
label define metarea_lbl 5240 `"Montgomery, Al"', add
label define metarea_lbl 5320 `"Muskegon-Norton Shores-Muskegon Heights, MI"', add
label define metarea_lbl 5321 `"Muskegon-Norton Shores, MI"', add
label define metarea_lbl 5330 `"Myrtle Beach, SC"', add
label define metarea_lbl 5331 `"Myrtle Beach-Conway-North Myrtle Beach, SC"', add
label define metarea_lbl 5340 `"Naples, FL"', add
label define metarea_lbl 5341 `"Naples-Marco Island, FL"', add
label define metarea_lbl 5350 `"Nashua, NH"', add
label define metarea_lbl 5360 `"Nashville, TN"', add
label define metarea_lbl 5361 `"Nashville-Davidson-Murfreesboro, TN"', add
label define metarea_lbl 5400 `"New Bedford, MA"', add
label define metarea_lbl 5480 `"New Haven-Meriden, CT"', add
label define metarea_lbl 5481 `"New Haven, CT"', add
label define metarea_lbl 5520 `"New London-Norwich, CT/RI"', add
label define metarea_lbl 5560 `"New Orleans, LA"', add
label define metarea_lbl 5561 `"New Orleans-Metairie-Kenner, LA"', add
label define metarea_lbl 5600 `"New York-Northeastern NJ"', add
label define metarea_lbl 5601 `"Nassau-Suffolk, NY"', add
label define metarea_lbl 5602 `"Bergen-Passaic, NJ"', add
label define metarea_lbl 5603 `"Jersey City, NJ"', add
label define metarea_lbl 5604 `"Middlesex-Somerset-Hunterdon, NJ"', add
label define metarea_lbl 5605 `"Newark, NJ"', add
label define metarea_lbl 5606 `"New York-Northern New Jersey-Long Island, NY-NJ-PA"', add
label define metarea_lbl 5607 `"New York, NY"', add
label define metarea_lbl 5640 `"Newark, OH"', add
label define metarea_lbl 5660 `"Newburgh-Middletown, NY"', add
label define metarea_lbl 5720 `"Norfolk-Virginia Beach-Newport News, VA"', add
label define metarea_lbl 5721 `"Virginia Beach-Norfolk-Newport News, VA/NC"', add
label define metarea_lbl 5760 `"Norwalk, CT"', add
label define metarea_lbl 5790 `"Ocala, FL"', add
label define metarea_lbl 5800 `"Odessa, TX"', add
label define metarea_lbl 5801 `"Midland, TX"', add
label define metarea_lbl 5840 `"Ocean City, NJ"', add
label define metarea_lbl 5880 `"Oklahoma City, OK"', add
label define metarea_lbl 5910 `"Olympia, WA"', add
label define metarea_lbl 5920 `"Omaha, NE/IA"', add
label define metarea_lbl 5921 `"Omaha-Council Bluffs, NE/IA"', add
label define metarea_lbl 5950 `"Orange, NY"', add
label define metarea_lbl 5960 `"Orlando, FL"', add
label define metarea_lbl 6010 `"Panama City, FL"', add
label define metarea_lbl 6011 `"Panama City-Lynn Haven, FL"', add
label define metarea_lbl 6080 `"Pensacola, FL"', add
label define metarea_lbl 6081 `"Pensacola-Ferry Pass-Brent, FL"', add
label define metarea_lbl 6120 `"Peoria, IL"', add
label define metarea_lbl 6160 `"Philadelphia, PA/NJ"', add
label define metarea_lbl 6161 `"Philadelphia-Camden-Wilmington, PA/NJ/DE"', add
label define metarea_lbl 6200 `"Phoenix, AZ"', add
label define metarea_lbl 6201 `"Phoenix-Mesa-Scottsdale, AZ"', add
label define metarea_lbl 6280 `"Pittsburg, PA"', add
label define metarea_lbl 6281 `"Beaver County"', add
label define metarea_lbl 6400 `"Portland, ME"', add
label define metarea_lbl 6401 `"Portland-South Portland, ME"', add
label define metarea_lbl 6440 `"Portland-Vancouver, OR/WA"', add
label define metarea_lbl 6441 `"Vancouver, WA"', add
label define metarea_lbl 6442 `"Portland-Vancouver-Beaverton, OR/WA"', add
label define metarea_lbl 6450 `"Portsmouth-Dover-Rochester, NH/ME"', add
label define metarea_lbl 6451 `"Portsmouth-Rochester, NH/ME MSA"', add
label define metarea_lbl 6452 `"Rochester-Dover, NH/ME"', add
label define metarea_lbl 6460 `"Poughkeepsie, NY"', add
label define metarea_lbl 6461 `"Poughkeepsie-Newburgh-Middletown, NY"', add
label define metarea_lbl 6470 `"Prescott, AZ"', add
label define metarea_lbl 6480 `"Providence-Fall River-Pawtucket, MA/RI"', add
label define metarea_lbl 6482 `"Pawtuckett-Woonsocket-Attleboro, RI/MA"', add
label define metarea_lbl 6483 `"Providence-Fall River-Warwick, MA-RI"', add
label define metarea_lbl 6520 `"Provo-Orem, UT"', add
label define metarea_lbl 6560 `"Pueblo, CO"', add
label define metarea_lbl 6580 `"Punta Gorda, FL"', add
label define metarea_lbl 6600 `"Racine, WI"', add
label define metarea_lbl 6640 `"Raleigh-Durham, NC"', add
label define metarea_lbl 6641 `"Durham, NC"', add
label define metarea_lbl 6642 `"Raleigh-Carey, NC"', add
label define metarea_lbl 6680 `"Reading, PA"', add
label define metarea_lbl 6720 `"Reno, NV"', add
label define metarea_lbl 6721 `"Reno-Sparks, NV"', add
label define metarea_lbl 6760 `"Richmond-Petersburg, VA"', add
label define metarea_lbl 6761 `"Richmond, VA"', add
label define metarea_lbl 6780 `"Riverside-San Bernadino, CA"', add
label define metarea_lbl 6800 `"Roanoke, VA"', add
label define metarea_lbl 6840 `"Rochester, NY"', add
label define metarea_lbl 6880 `"Rockford, IL"', add
label define metarea_lbl 6920 `"Sacramento, CA"', add
label define metarea_lbl 6921 `"Sacramento-Arden Arcade-Roseville, CA"', add
label define metarea_lbl 6960 `"Saginaw-Bay City-Midland, MI"', add
label define metarea_lbl 6961 `"Saginaw-Saginaw Township North, MI"', add
label define metarea_lbl 6980 `"St. Cloud, MN"', add
label define metarea_lbl 7040 `"St. Louis, MO/IL"', add
label define metarea_lbl 7080 `"Salem, OR"', add
label define metarea_lbl 7120 `"Salinas-Sea Side-Monterey, CA"', add
label define metarea_lbl 7121 `"Salinas, CA"', add
label define metarea_lbl 7130 `"Salisbury, MD"', add
label define metarea_lbl 7160 `"Salt Lake City-Ogden, UT"', add
label define metarea_lbl 7161 `"Salt Lake City, UT"', add
label define metarea_lbl 7162 `"Ogden-Clearfield, UT"', add
label define metarea_lbl 7240 `"San Antonio, TX"', add
label define metarea_lbl 7320 `"San Diego, CA"', add
label define metarea_lbl 7321 `"San Diego-Carlsbad-San Marcos, CA"', add
label define metarea_lbl 7360 `"San Francisco-Oaklan-Vallejo, CA"', add
label define metarea_lbl 7361 `"Oakland, CA"', add
label define metarea_lbl 7362 `"Vallejo-Fairfield-Napa, CA"', add
label define metarea_lbl 7363 `"Vallejo-Fairfield, CA"', add
label define metarea_lbl 7364 `"Napa, CA"', add
label define metarea_lbl 7365 `"San Francisco-Oakland-Fremont, CA"', add
label define metarea_lbl 7400 `"San Jose, CA"', add
label define metarea_lbl 7401 `"San Jose-Sunnyvale-Santa Clara, CA"', add
label define metarea_lbl 7460 `"San Luis Obispo-Atascadero-Paso Robles, CA"', add
label define metarea_lbl 7461 `"San Luis Obispo-Paso Robles, CA"', add
label define metarea_lbl 7470 `"Santa Barbara-Santa Maria-Lompoc, CA"', add
label define metarea_lbl 7471 `"Santa Barbara-Santa Maria-Goleta, CA"', add
label define metarea_lbl 7480 `"Santa Cruz, CA"', add
label define metarea_lbl 7481 `"Santa Cruz-Watsonville, CA"', add
label define metarea_lbl 7490 `"Santa Fe, NM"', add
label define metarea_lbl 7500 `"Santa Rosa-Petaluma, CA"', add
label define metarea_lbl 7510 `"Sarasota, FL"', add
label define metarea_lbl 7511 `"Sarasota-Bradenton-Venice, FL"', add
label define metarea_lbl 7520 `"Savannah, GA"', add
label define metarea_lbl 7560 `"Scranton-Wilkes-Barre, PA"', add
label define metarea_lbl 7600 `"Seattle-Everett, WA"', add
label define metarea_lbl 7601 `"Seattle-Tacoma-Bellevue, WA"', add
label define metarea_lbl 7610 `"Sharon, PA"', add
label define metarea_lbl 7680 `"Shreveport, LA"', add
label define metarea_lbl 7681 `"Shreveport-Bossier City, LA"', add
label define metarea_lbl 7720 `"Sioux City, IA-NE"', add
label define metarea_lbl 7760 `"Sioux Falls, SD"', add
label define metarea_lbl 7800 `"South Bend-Mishawaka, IN"', add
label define metarea_lbl 7840 `"Spokane, WA"', add
label define metarea_lbl 7880 `"Springfield, IL"', add
label define metarea_lbl 7920 `"Springfield, MO"', add
label define metarea_lbl 8000 `"Springfield-Holyoke-Chicopee, MA"', add
label define metarea_lbl 8001 `"Springfield, MA/CT"', add
label define metarea_lbl 8040 `"Stamford, CT"', add
label define metarea_lbl 8120 `"Stockton, CA"', add
label define metarea_lbl 8160 `"Syracuse, NY"', add
label define metarea_lbl 8200 `"Tacoma, WA"', add
label define metarea_lbl 8240 `"Tallahassee, FL"', add
label define metarea_lbl 8280 `"Tampa-St. Petersburg-Clearwater, FL"', add
label define metarea_lbl 8320 `"Terre Haute, IN"', add
label define metarea_lbl 8400 `"Toledo, OH/MI"', add
label define metarea_lbl 8440 `"Topeka, KS"', add
label define metarea_lbl 8480 `"Trenton, NJ"', add
label define metarea_lbl 8481 `"Trenton-Ewing, NJ"', add
label define metarea_lbl 8520 `"Tucson, AZ"', add
label define metarea_lbl 8560 `"Tulsa, OK"', add
label define metarea_lbl 8600 `"Tuscaloosa, AL"', add
label define metarea_lbl 8680 `"Utica-Rome, NY"', add
label define metarea_lbl 8700 `"Valdosta, GA"', add
label define metarea_lbl 8730 `"Ventura-Oxnard-Simi Valley, CA"', add
label define metarea_lbl 8731 `"Oxnard-Thousand Oaks-Ventura, CA"', add
label define metarea_lbl 8740 `"Vero Beach, FL"', add
label define metarea_lbl 8750 `"Victoria, TX"', add
label define metarea_lbl 8760 `"Vineland-Milville-Bridgetown, NJ"', add
label define metarea_lbl 8780 `"Visalia-Tulare-Porterville, CA"', add
label define metarea_lbl 8781 `"Visalia-Porterville, CA"', add
label define metarea_lbl 8800 `"Waco, TX"', add
label define metarea_lbl 8840 `"Washington, DC/MD/VA"', add
label define metarea_lbl 8880 `"Waterbury, CT"', add
label define metarea_lbl 8920 `"Waterloo-Cedar Falls, IA"', add
label define metarea_lbl 8940 `"Wausau, WI"', add
label define metarea_lbl 8960 `"West Palm Beach-Boca Raton-Delray Beach, FL"', add
label define metarea_lbl 9000 `"Wheeling, WV/OH"', add
label define metarea_lbl 9040 `"Wichita, KS"', add
label define metarea_lbl 9140 `"Williamsport, PA"', add
label define metarea_lbl 9160 `"Wilmington, DE/NJ/MD"', add
label define metarea_lbl 9200 `"Wilmington, NC"', add
label define metarea_lbl 9240 `"Worcester, MA"', add
label define metarea_lbl 9260 `"Yakima, WA"', add
label define metarea_lbl 9270 `"Yolo, CA"', add
label define metarea_lbl 9280 `"York, PA"', add
label define metarea_lbl 9281 `"York-Hanover, PA"', add
label define metarea_lbl 9320 `"Youngstown-Warren, OH/PA"', add
label define metarea_lbl 9321 `"Youngstown-Warren-Boardman, OH"', add
label define metarea_lbl 9340 `"Yuba City, CA"', add
label define metarea_lbl 9360 `"Yuma, AZ"', add
label define metarea_lbl 9997 `"Other metropolitan areas, unidentified"', add
label define metarea_lbl 9998 `"NIU, household not in a metropolitan area"', add
label define metarea_lbl 9999 `"Missing data"', add
label values metarea metarea_lbl

label define farm_lbl 1 `"Non-farm"'
label define farm_lbl 2 `"Farm"', add
label values farm farm_lbl

label define ownershp_lbl 00 `"NIU"'
label define ownershp_lbl 10 `"Owned or being bought"', add
label define ownershp_lbl 21 `"No cash rent"', add
label define ownershp_lbl 22 `"With cash rent"', add
label values ownershp ownershp_lbl

label define pubhous_lbl 0 `"NIU"'
label define pubhous_lbl 1 `"No"', add
label define pubhous_lbl 2 `"Yes"', add
label values pubhous pubhous_lbl

label define rentsub_lbl 0 `"NIU"'
label define rentsub_lbl 1 `"No"', add
label define rentsub_lbl 2 `"Yes"', add
label values rentsub rentsub_lbl

label define heatsub_lbl 0 `"NIU"'
label define heatsub_lbl 1 `"No"', add
label define heatsub_lbl 2 `"Yes"', add
label values heatsub heatsub_lbl

label define heatpay_lbl 0 `"NIU"'
label define heatpay_lbl 1 `"Check sent to household"', add
label define heatpay_lbl 2 `"Coupon/voucher sent to household"', add
label define heatpay_lbl 3 `"Payment sent to utility company or to landlord"', add
label define heatpay_lbl 4 `"Check and coupon/voucher to household"', add
label define heatpay_lbl 5 `"Check to household and utility company payment"', add
label define heatpay_lbl 6 `"Coupon to household and utility company payment"', add
label values heatpay heatpay_lbl

label define noheat_lbl 0 `"NIU"'
label define noheat_lbl 1 `"No"', add
label define noheat_lbl 2 `"Yes"', add
label values noheat noheat_lbl

label define foodstmp_lbl 0 `"NIU"'
label define foodstmp_lbl 1 `"No"', add
label define foodstmp_lbl 2 `"Yes"', add
label values foodstmp foodstmp_lbl

label define stampmo_lbl 00 `"NIU"'
label define stampmo_lbl 01 `"One"', add
label define stampmo_lbl 02 `"Two"', add
label define stampmo_lbl 03 `"Three"', add
label define stampmo_lbl 04 `"Four"', add
label define stampmo_lbl 05 `"Five"', add
label define stampmo_lbl 06 `"Six"', add
label define stampmo_lbl 07 `"Seven"', add
label define stampmo_lbl 08 `"Eight"', add
label define stampmo_lbl 09 `"Nine"', add
label define stampmo_lbl 10 `"Ten"', add
label define stampmo_lbl 11 `"Eleven"', add
label define stampmo_lbl 12 `"Twelve"', add
label values stampmo stampmo_lbl

label define atelunch_lbl 00 `"Zero"'
label define atelunch_lbl 01 `"One"', add
label define atelunch_lbl 02 `"Two"', add
label define atelunch_lbl 03 `"Three"', add
label define atelunch_lbl 04 `"Four"', add
label define atelunch_lbl 05 `"Five"', add
label define atelunch_lbl 06 `"Six"', add
label define atelunch_lbl 07 `"Seven"', add
label define atelunch_lbl 08 `"Eight"', add
label define atelunch_lbl 09 `"Nine or more"', add
label define atelunch_lbl 99 `"NIU"', add
label values atelunch atelunch_lbl

label define lunchsub_lbl 0 `"NIU"'
label define lunchsub_lbl 1 `"Yes, children receive free or reduced price lunch"', add
label define lunchsub_lbl 2 `"No, children did not receive free or reduced price lunch"', add
label values lunchsub lunchsub_lbl

label define frelunch_lbl 00 `"Zero"'
label define frelunch_lbl 01 `"One"', add
label define frelunch_lbl 02 `"Two"', add
label define frelunch_lbl 03 `"Three"', add
label define frelunch_lbl 04 `"Four"', add
label define frelunch_lbl 05 `"Five"', add
label define frelunch_lbl 06 `"Six"', add
label define frelunch_lbl 07 `"Seven"', add
label define frelunch_lbl 08 `"Eight"', add
label define frelunch_lbl 09 `"Nine or more"', add
label define frelunch_lbl 98 `"NIU -- Children didn't eat hot lunch"', add
label define frelunch_lbl 99 `"NIU -- No children in hh"', add
label values frelunch frelunch_lbl

label define unitsstr_lbl 00 `"NIU"'
label define unitsstr_lbl 01 `"Mobile home or trailer"', add
label define unitsstr_lbl 05 `"2 family building"', add
label define unitsstr_lbl 06 `"3-4 family building"', add
label define unitsstr_lbl 07 `"5-9 family building"', add
label define unitsstr_lbl 11 `"One unit, unspecified type"', add
label define unitsstr_lbl 12 `"10+ units in structure"', add
label values unitsstr unitsstr_lbl

label define fuelheat_lbl 0 `"NIU"'
label define fuelheat_lbl 1 `"No fuel used"', add
label define fuelheat_lbl 2 `"Utility gas from underground pipes"', add
label define fuelheat_lbl 3 `"Bottled, tank, or liquified petroleum gas"', add
label define fuelheat_lbl 4 `"Electricity"', add
label define fuelheat_lbl 5 `"Fuel oil, kerosene, other liquid fuels"', add
label define fuelheat_lbl 6 `"Coal or coke"', add
label define fuelheat_lbl 7 `"Wood"', add
label define fuelheat_lbl 9 `"Other"', add
label values fuelheat fuelheat_lbl

label define phone_lbl 0 `"NIU"'
label define phone_lbl 1 `"No, no phone available"', add
label define phone_lbl 2 `"Yes, phone available"', add
label define phone_lbl 3 `"Yes, phone in household"', add
label define phone_lbl 9 `"Unknown"', add
label values phone phone_lbl

label define nfams_lbl 00 `"0 families (vacant unit)"'
label define nfams_lbl 01 `"1 family or N/A"', add
label define nfams_lbl 02 `"2 families"', add
label define nfams_lbl 03 `"3"', add
label define nfams_lbl 04 `"4"', add
label define nfams_lbl 05 `"5"', add
label define nfams_lbl 06 `"6"', add
label define nfams_lbl 07 `"7"', add
label define nfams_lbl 08 `"8"', add
label define nfams_lbl 09 `"9"', add
label define nfams_lbl 10 `"10"', add
label define nfams_lbl 11 `"11"', add
label define nfams_lbl 12 `"12"', add
label define nfams_lbl 13 `"13"', add
label define nfams_lbl 14 `"14"', add
label define nfams_lbl 15 `"15"', add
label define nfams_lbl 16 `"16"', add
label define nfams_lbl 17 `"17"', add
label define nfams_lbl 18 `"18"', add
label define nfams_lbl 19 `"19"', add
label define nfams_lbl 20 `"20"', add
label define nfams_lbl 21 `"21"', add
label define nfams_lbl 22 `"22"', add
label define nfams_lbl 23 `"23"', add
label define nfams_lbl 24 `"24"', add
label define nfams_lbl 25 `"25"', add
label define nfams_lbl 26 `"26"', add
label define nfams_lbl 27 `"27"', add
label define nfams_lbl 28 `"28"', add
label define nfams_lbl 29 `"29"', add
label define nfams_lbl 30 `"30"', add
label values nfams nfams_lbl

label define ncouples_lbl 0 `"0 couples or NIU"'
label define ncouples_lbl 1 `"1"', add
label define ncouples_lbl 2 `"2"', add
label define ncouples_lbl 3 `"3"', add
label define ncouples_lbl 4 `"4"', add
label define ncouples_lbl 5 `"5"', add
label define ncouples_lbl 6 `"6"', add
label define ncouples_lbl 7 `"7"', add
label define ncouples_lbl 9 `"9"', add
label values ncouples ncouples_lbl

label define nmothers_lbl 0 `"0 mothers or NIU"'
label define nmothers_lbl 1 `"1"', add
label define nmothers_lbl 2 `"2"', add
label define nmothers_lbl 3 `"3"', add
label define nmothers_lbl 4 `"4"', add
label define nmothers_lbl 5 `"5"', add
label define nmothers_lbl 6 `"6"', add
label values nmothers nmothers_lbl

label define nfathers_lbl 0 `"0 fathers or NIU"'
label define nfathers_lbl 1 `"1"', add
label define nfathers_lbl 2 `"2"', add
label define nfathers_lbl 3 `"3"', add
label define nfathers_lbl 4 `"4"', add
label define nfathers_lbl 5 `"5"', add
label define nfathers_lbl 6 `"6"', add
label values nfathers nfathers_lbl

label define month_lbl 01 `"January"'
label define month_lbl 02 `"February"', add
label define month_lbl 03 `"March"', add
label define month_lbl 04 `"April"', add
label define month_lbl 05 `"May"', add
label define month_lbl 06 `"June"', add
label define month_lbl 07 `"July"', add
label define month_lbl 08 `"August"', add
label define month_lbl 09 `"September"', add
label define month_lbl 10 `"October"', add
label define month_lbl 11 `"November"', add
label define month_lbl 12 `"December"', add
label values month month_lbl

label define hiurule_lbl 1 `"Point HIU reference person to self"'
label define hiurule_lbl 2 `"Point married female, with spouse present, to spouse "', add
label define hiurule_lbl 3 `"Point eligible child to father, if present "', add
label define hiurule_lbl 4 `"Point eligible child to mother, if present and father absent "', add
label define hiurule_lbl 5 `"Point single adults to self (single, spouse absent, separated, divorced, widowed and no own children in household) "', add
label define hiurule_lbl 6 `"Point related singleton children to first HIU reference person in household (no parents in household, but related to the reference person) "', add
label define hiurule_lbl 7 `"Point unrelated singleton children to self "', add
label define hiurule_lbl 9 `"N.A. (Not Available - 3/8 ASEC 2014 sample)"', add
label values hiurule hiurule_lbl

label define stepmom_lbl 0 `"No stepmother present"'
label define stepmom_lbl 1 `"Improbable age difference"', add
label define stepmom_lbl 2 `"Spouse of father"', add
label define stepmom_lbl 3 `"Identified stepmother"', add
label values stepmom stepmom_lbl

label define momrule_lbl 0 `"No mother link"'
label define momrule_lbl 1 `"Unambiguous mother link"', add
label define momrule_lbl 2 `"Daughter/granchild link"', add
label define momrule_lbl 3 `"Preceding male (no intervening person)"', add
label define momrule_lbl 7 `"Spouse of father becomes stepmother"', add
label values momrule momrule_lbl

label define steppop_lbl 0 `"No stepfather present"'
label define steppop_lbl 1 `"Improbable age difference"', add
label define steppop_lbl 2 `"Spouse of father"', add
label define steppop_lbl 3 `"Identified stepfather"', add
label values steppop steppop_lbl

label define poprule_lbl 0 `"No father link"'
label define poprule_lbl 1 `"Unambiguous father link"', add
label define poprule_lbl 2 `"Son/granchild link"', add
label define poprule_lbl 3 `"Preceding male (no intervening person)"', add
label define poprule_lbl 7 `"Husband of mother becomes stepfather"', add
label values poprule poprule_lbl

label define sprule_lbl 0 `"No spouse link"'
label define sprule_lbl 1 `"Wife follows husband"', add
label define sprule_lbl 2 `"Wife precedes husband"', add
label define sprule_lbl 3 `"Non-adjacent names -- consistent relationship to head/age differences"', add
label define sprule_lbl 4 `"Adjacent names (wife follows husband -- no age, other relative conflicts)"', add
label define sprule_lbl 5 `"Adjacent names (wife precedes husband -- no age, other relative conflicts)"', add
label define sprule_lbl 6 `"Alternate partner (if conflict in rules 1-5 link)"', add
label values sprule sprule_lbl

label define famsize_lbl 00 `"Missing"'
label define famsize_lbl 01 `"1 family member present"', add
label define famsize_lbl 02 `"2 family members present"', add
label define famsize_lbl 03 `"3 family members present"', add
label define famsize_lbl 04 `"4 family members present"', add
label define famsize_lbl 05 `"5 family members present"', add
label define famsize_lbl 06 `"6 family members present"', add
label define famsize_lbl 07 `"7 family members present"', add
label define famsize_lbl 08 `"8 family members present"', add
label define famsize_lbl 09 `"9 family members present"', add
label define famsize_lbl 10 `"10 family members present"', add
label define famsize_lbl 11 `"11 family members present"', add
label define famsize_lbl 12 `"12 family members present"', add
label define famsize_lbl 13 `"13 family members present"', add
label define famsize_lbl 14 `"14 family members present"', add
label define famsize_lbl 15 `"15 family members present"', add
label define famsize_lbl 16 `"16 family members present"', add
label define famsize_lbl 17 `"17 family members present"', add
label define famsize_lbl 18 `"18 family members present"', add
label define famsize_lbl 19 `"19 family members present"', add
label define famsize_lbl 20 `"20 family members present"', add
label define famsize_lbl 21 `"21 family members present"', add
label define famsize_lbl 22 `"22 family members present"', add
label define famsize_lbl 23 `"23 family members present"', add
label define famsize_lbl 24 `"24 family members present"', add
label define famsize_lbl 25 `"25 family members present"', add
label define famsize_lbl 26 `"26 family members present"', add
label define famsize_lbl 27 `"27 family members present"', add
label define famsize_lbl 28 `"28 family members present"', add
label define famsize_lbl 29 `"29 family members present"', add
label values famsize famsize_lbl

label define nchild_lbl 0 `"0 children present"'
label define nchild_lbl 1 `"1 child present"', add
label define nchild_lbl 2 `"2"', add
label define nchild_lbl 3 `"3"', add
label define nchild_lbl 4 `"4"', add
label define nchild_lbl 5 `"5"', add
label define nchild_lbl 6 `"6"', add
label define nchild_lbl 7 `"7"', add
label define nchild_lbl 8 `"8"', add
label define nchild_lbl 9 `"9+"', add
label values nchild nchild_lbl

label define nchlt5_lbl 0 `"No children under age 5"'
label define nchlt5_lbl 1 `"1 child under age 5"', add
label define nchlt5_lbl 2 `"2"', add
label define nchlt5_lbl 3 `"3"', add
label define nchlt5_lbl 4 `"4"', add
label define nchlt5_lbl 5 `"5"', add
label define nchlt5_lbl 6 `"6"', add
label define nchlt5_lbl 7 `"7"', add
label define nchlt5_lbl 8 `"8"', add
label define nchlt5_lbl 9 `"9+"', add
label values nchlt5 nchlt5_lbl

label define famunit_lbl 01 `"1st family in household or group quarters"'
label define famunit_lbl 02 `"2nd family in household or group quarters"', add
label define famunit_lbl 03 `"3rd"', add
label define famunit_lbl 04 `"4th"', add
label define famunit_lbl 05 `"5th"', add
label define famunit_lbl 06 `"6th"', add
label define famunit_lbl 07 `"7th"', add
label define famunit_lbl 08 `"8th"', add
label define famunit_lbl 09 `"9th"', add
label define famunit_lbl 10 `"10"', add
label define famunit_lbl 11 `"11"', add
label define famunit_lbl 12 `"12"', add
label define famunit_lbl 13 `"13"', add
label define famunit_lbl 14 `"14"', add
label define famunit_lbl 15 `"15"', add
label define famunit_lbl 16 `"16"', add
label define famunit_lbl 17 `"17"', add
label define famunit_lbl 18 `"18"', add
label define famunit_lbl 19 `"19"', add
label define famunit_lbl 20 `"20"', add
label define famunit_lbl 21 `"21"', add
label define famunit_lbl 22 `"22"', add
label define famunit_lbl 23 `"23"', add
label define famunit_lbl 24 `"24"', add
label define famunit_lbl 25 `"25"', add
label define famunit_lbl 26 `"26"', add
label define famunit_lbl 27 `"27"', add
label define famunit_lbl 28 `"28"', add
label define famunit_lbl 29 `"29"', add
label values famunit famunit_lbl

label define eldch_lbl 00 `"Less than 1 year old"'
label define eldch_lbl 01 `"1"', add
label define eldch_lbl 02 `"2"', add
label define eldch_lbl 03 `"3"', add
label define eldch_lbl 04 `"4"', add
label define eldch_lbl 05 `"5"', add
label define eldch_lbl 06 `"6"', add
label define eldch_lbl 07 `"7"', add
label define eldch_lbl 08 `"8"', add
label define eldch_lbl 09 `"9"', add
label define eldch_lbl 10 `"10"', add
label define eldch_lbl 11 `"11"', add
label define eldch_lbl 12 `"12"', add
label define eldch_lbl 13 `"13"', add
label define eldch_lbl 14 `"14"', add
label define eldch_lbl 15 `"15"', add
label define eldch_lbl 16 `"16"', add
label define eldch_lbl 17 `"17"', add
label define eldch_lbl 18 `"18"', add
label define eldch_lbl 19 `"19"', add
label define eldch_lbl 20 `"20"', add
label define eldch_lbl 21 `"21"', add
label define eldch_lbl 22 `"22"', add
label define eldch_lbl 23 `"23"', add
label define eldch_lbl 24 `"24"', add
label define eldch_lbl 25 `"25"', add
label define eldch_lbl 26 `"26"', add
label define eldch_lbl 27 `"27"', add
label define eldch_lbl 28 `"28"', add
label define eldch_lbl 29 `"29"', add
label define eldch_lbl 30 `"30"', add
label define eldch_lbl 31 `"31"', add
label define eldch_lbl 32 `"32"', add
label define eldch_lbl 33 `"33"', add
label define eldch_lbl 34 `"34"', add
label define eldch_lbl 35 `"35"', add
label define eldch_lbl 36 `"36"', add
label define eldch_lbl 37 `"37"', add
label define eldch_lbl 38 `"38"', add
label define eldch_lbl 39 `"39"', add
label define eldch_lbl 40 `"40"', add
label define eldch_lbl 41 `"41"', add
label define eldch_lbl 42 `"42"', add
label define eldch_lbl 43 `"43"', add
label define eldch_lbl 44 `"44"', add
label define eldch_lbl 45 `"45"', add
label define eldch_lbl 46 `"46"', add
label define eldch_lbl 47 `"47"', add
label define eldch_lbl 48 `"48"', add
label define eldch_lbl 49 `"49"', add
label define eldch_lbl 50 `"50"', add
label define eldch_lbl 51 `"51"', add
label define eldch_lbl 52 `"52"', add
label define eldch_lbl 53 `"53"', add
label define eldch_lbl 54 `"54"', add
label define eldch_lbl 55 `"55"', add
label define eldch_lbl 56 `"56"', add
label define eldch_lbl 57 `"57"', add
label define eldch_lbl 58 `"58"', add
label define eldch_lbl 59 `"59"', add
label define eldch_lbl 60 `"60"', add
label define eldch_lbl 61 `"61"', add
label define eldch_lbl 62 `"62"', add
label define eldch_lbl 63 `"63"', add
label define eldch_lbl 64 `"64"', add
label define eldch_lbl 65 `"65"', add
label define eldch_lbl 66 `"66"', add
label define eldch_lbl 67 `"67"', add
label define eldch_lbl 68 `"68"', add
label define eldch_lbl 69 `"69"', add
label define eldch_lbl 70 `"70"', add
label define eldch_lbl 71 `"71"', add
label define eldch_lbl 72 `"72"', add
label define eldch_lbl 73 `"73"', add
label define eldch_lbl 74 `"74"', add
label define eldch_lbl 75 `"75"', add
label define eldch_lbl 76 `"76"', add
label define eldch_lbl 77 `"77"', add
label define eldch_lbl 78 `"78"', add
label define eldch_lbl 79 `"79"', add
label define eldch_lbl 80 `"80"', add
label define eldch_lbl 81 `"81"', add
label define eldch_lbl 82 `"82"', add
label define eldch_lbl 83 `"83"', add
label define eldch_lbl 84 `"84"', add
label define eldch_lbl 85 `"85"', add
label define eldch_lbl 86 `"86"', add
label define eldch_lbl 87 `"87"', add
label define eldch_lbl 88 `"88"', add
label define eldch_lbl 89 `"89"', add
label define eldch_lbl 90 `"90"', add
label define eldch_lbl 91 `"91"', add
label define eldch_lbl 92 `"92"', add
label define eldch_lbl 93 `"93"', add
label define eldch_lbl 94 `"94"', add
label define eldch_lbl 95 `"95"', add
label define eldch_lbl 96 `"96"', add
label define eldch_lbl 97 `"97"', add
label define eldch_lbl 98 `"98"', add
label define eldch_lbl 99 `"NIU"', add
label values eldch eldch_lbl

label define yngch_lbl 00 `"Less than 1 year old"'
label define yngch_lbl 01 `"1"', add
label define yngch_lbl 02 `"2"', add
label define yngch_lbl 03 `"3"', add
label define yngch_lbl 04 `"4"', add
label define yngch_lbl 05 `"5"', add
label define yngch_lbl 06 `"6"', add
label define yngch_lbl 07 `"7"', add
label define yngch_lbl 08 `"8"', add
label define yngch_lbl 09 `"9"', add
label define yngch_lbl 10 `"10"', add
label define yngch_lbl 11 `"11"', add
label define yngch_lbl 12 `"12"', add
label define yngch_lbl 13 `"13"', add
label define yngch_lbl 14 `"14"', add
label define yngch_lbl 15 `"15"', add
label define yngch_lbl 16 `"16"', add
label define yngch_lbl 17 `"17"', add
label define yngch_lbl 18 `"18"', add
label define yngch_lbl 19 `"19"', add
label define yngch_lbl 20 `"20"', add
label define yngch_lbl 21 `"21"', add
label define yngch_lbl 22 `"22"', add
label define yngch_lbl 23 `"23"', add
label define yngch_lbl 24 `"24"', add
label define yngch_lbl 25 `"25"', add
label define yngch_lbl 26 `"26"', add
label define yngch_lbl 27 `"27"', add
label define yngch_lbl 28 `"28"', add
label define yngch_lbl 29 `"29"', add
label define yngch_lbl 30 `"30"', add
label define yngch_lbl 31 `"31"', add
label define yngch_lbl 32 `"32"', add
label define yngch_lbl 33 `"33"', add
label define yngch_lbl 34 `"34"', add
label define yngch_lbl 35 `"35"', add
label define yngch_lbl 36 `"36"', add
label define yngch_lbl 37 `"37"', add
label define yngch_lbl 38 `"38"', add
label define yngch_lbl 39 `"39"', add
label define yngch_lbl 40 `"40"', add
label define yngch_lbl 41 `"41"', add
label define yngch_lbl 42 `"42"', add
label define yngch_lbl 43 `"43"', add
label define yngch_lbl 44 `"44"', add
label define yngch_lbl 45 `"45"', add
label define yngch_lbl 46 `"46"', add
label define yngch_lbl 47 `"47"', add
label define yngch_lbl 48 `"48"', add
label define yngch_lbl 49 `"49"', add
label define yngch_lbl 50 `"50"', add
label define yngch_lbl 51 `"51"', add
label define yngch_lbl 52 `"52"', add
label define yngch_lbl 53 `"53"', add
label define yngch_lbl 54 `"54"', add
label define yngch_lbl 55 `"55"', add
label define yngch_lbl 56 `"56"', add
label define yngch_lbl 57 `"57"', add
label define yngch_lbl 58 `"58"', add
label define yngch_lbl 59 `"59"', add
label define yngch_lbl 60 `"60"', add
label define yngch_lbl 61 `"61"', add
label define yngch_lbl 62 `"62"', add
label define yngch_lbl 63 `"63"', add
label define yngch_lbl 64 `"64"', add
label define yngch_lbl 65 `"65"', add
label define yngch_lbl 66 `"66"', add
label define yngch_lbl 67 `"67"', add
label define yngch_lbl 68 `"68"', add
label define yngch_lbl 69 `"69"', add
label define yngch_lbl 70 `"70"', add
label define yngch_lbl 71 `"71"', add
label define yngch_lbl 72 `"72"', add
label define yngch_lbl 73 `"73"', add
label define yngch_lbl 74 `"74"', add
label define yngch_lbl 75 `"75"', add
label define yngch_lbl 76 `"76"', add
label define yngch_lbl 77 `"77"', add
label define yngch_lbl 78 `"78"', add
label define yngch_lbl 79 `"79"', add
label define yngch_lbl 80 `"80"', add
label define yngch_lbl 81 `"81"', add
label define yngch_lbl 82 `"82"', add
label define yngch_lbl 83 `"83"', add
label define yngch_lbl 84 `"84"', add
label define yngch_lbl 85 `"85"', add
label define yngch_lbl 86 `"86"', add
label define yngch_lbl 87 `"87"', add
label define yngch_lbl 88 `"88"', add
label define yngch_lbl 89 `"89"', add
label define yngch_lbl 90 `"90"', add
label define yngch_lbl 91 `"91"', add
label define yngch_lbl 92 `"92"', add
label define yngch_lbl 93 `"93"', add
label define yngch_lbl 94 `"94"', add
label define yngch_lbl 95 `"95"', add
label define yngch_lbl 96 `"96"', add
label define yngch_lbl 97 `"97"', add
label define yngch_lbl 98 `"98"', add
label define yngch_lbl 99 `"NIU"', add
label values yngch yngch_lbl

label define nsibs_lbl 0 `"0 Siblings"'
label define nsibs_lbl 1 `"1 Sibling"', add
label define nsibs_lbl 2 `"2 Siblings"', add
label define nsibs_lbl 3 `"3 Siblings"', add
label define nsibs_lbl 4 `"4 Siblings"', add
label define nsibs_lbl 5 `"5 Siblings"', add
label define nsibs_lbl 6 `"6 Siblings"', add
label define nsibs_lbl 7 `"7 Siblings"', add
label define nsibs_lbl 8 `"8 Siblings"', add
label define nsibs_lbl 9 `"9 or more Siblings"', add
label values nsibs nsibs_lbl

label define relate_lbl 0101 `"Head/householder"'
label define relate_lbl 0201 `"Spouse"', add
label define relate_lbl 0301 `"Child"', add
label define relate_lbl 0303 `"Stepchild"', add
label define relate_lbl 0501 `"Parent"', add
label define relate_lbl 0701 `"Sibling"', add
label define relate_lbl 0901 `"Grandchild"', add
label define relate_lbl 1001 `"Other relatives, n.s."', add
label define relate_lbl 1113 `"Partner/roommate"', add
label define relate_lbl 1114 `"Unmarried partner"', add
label define relate_lbl 1115 `"Housemate/roomate"', add
label define relate_lbl 1241 `"Roomer/boarder/lodger"', add
label define relate_lbl 1242 `"Foster children"', add
label define relate_lbl 1260 `"Other nonrelatives"', add
label define relate_lbl 9100 `"Armed Forces, relationship unknown"', add
label define relate_lbl 9200 `"Age under 14, relationship unknown"', add
label define relate_lbl 9900 `"Relationship unknown"', add
label define relate_lbl 9999 `"9999"', add
label values relate relate_lbl

label define age_lbl 00 `"Under 1 year"'
label define age_lbl 01 `"1"', add
label define age_lbl 02 `"2"', add
label define age_lbl 03 `"3"', add
label define age_lbl 04 `"4"', add
label define age_lbl 05 `"5"', add
label define age_lbl 06 `"6"', add
label define age_lbl 07 `"7"', add
label define age_lbl 08 `"8"', add
label define age_lbl 09 `"9"', add
label define age_lbl 10 `"10"', add
label define age_lbl 11 `"11"', add
label define age_lbl 12 `"12"', add
label define age_lbl 13 `"13"', add
label define age_lbl 14 `"14"', add
label define age_lbl 15 `"15"', add
label define age_lbl 16 `"16"', add
label define age_lbl 17 `"17"', add
label define age_lbl 18 `"18"', add
label define age_lbl 19 `"19"', add
label define age_lbl 20 `"20"', add
label define age_lbl 21 `"21"', add
label define age_lbl 22 `"22"', add
label define age_lbl 23 `"23"', add
label define age_lbl 24 `"24"', add
label define age_lbl 25 `"25"', add
label define age_lbl 26 `"26"', add
label define age_lbl 27 `"27"', add
label define age_lbl 28 `"28"', add
label define age_lbl 29 `"29"', add
label define age_lbl 30 `"30"', add
label define age_lbl 31 `"31"', add
label define age_lbl 32 `"32"', add
label define age_lbl 33 `"33"', add
label define age_lbl 34 `"34"', add
label define age_lbl 35 `"35"', add
label define age_lbl 36 `"36"', add
label define age_lbl 37 `"37"', add
label define age_lbl 38 `"38"', add
label define age_lbl 39 `"39"', add
label define age_lbl 40 `"40"', add
label define age_lbl 41 `"41"', add
label define age_lbl 42 `"42"', add
label define age_lbl 43 `"43"', add
label define age_lbl 44 `"44"', add
label define age_lbl 45 `"45"', add
label define age_lbl 46 `"46"', add
label define age_lbl 47 `"47"', add
label define age_lbl 48 `"48"', add
label define age_lbl 49 `"49"', add
label define age_lbl 50 `"50"', add
label define age_lbl 51 `"51"', add
label define age_lbl 52 `"52"', add
label define age_lbl 53 `"53"', add
label define age_lbl 54 `"54"', add
label define age_lbl 55 `"55"', add
label define age_lbl 56 `"56"', add
label define age_lbl 57 `"57"', add
label define age_lbl 58 `"58"', add
label define age_lbl 59 `"59"', add
label define age_lbl 60 `"60"', add
label define age_lbl 61 `"61"', add
label define age_lbl 62 `"62"', add
label define age_lbl 63 `"63"', add
label define age_lbl 64 `"64"', add
label define age_lbl 65 `"65"', add
label define age_lbl 66 `"66"', add
label define age_lbl 67 `"67"', add
label define age_lbl 68 `"68"', add
label define age_lbl 69 `"69"', add
label define age_lbl 70 `"70"', add
label define age_lbl 71 `"71"', add
label define age_lbl 72 `"72"', add
label define age_lbl 73 `"73"', add
label define age_lbl 74 `"74"', add
label define age_lbl 75 `"75"', add
label define age_lbl 76 `"76"', add
label define age_lbl 77 `"77"', add
label define age_lbl 78 `"78"', add
label define age_lbl 79 `"79"', add
label define age_lbl 80 `"80"', add
label define age_lbl 81 `"81"', add
label define age_lbl 82 `"82"', add
label define age_lbl 83 `"83"', add
label define age_lbl 84 `"84"', add
label define age_lbl 85 `"85"', add
label define age_lbl 86 `"86"', add
label define age_lbl 87 `"87"', add
label define age_lbl 88 `"88"', add
label define age_lbl 89 `"89"', add
label define age_lbl 90 `"90 (90+, 1988-2002)"', add
label define age_lbl 91 `"91"', add
label define age_lbl 92 `"92"', add
label define age_lbl 93 `"93"', add
label define age_lbl 94 `"94"', add
label define age_lbl 95 `"95"', add
label define age_lbl 96 `"96"', add
label define age_lbl 97 `"97"', add
label define age_lbl 98 `"98"', add
label define age_lbl 99 `"99+"', add
label values age age_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label define sex_lbl 9 `"NIU"', add
label values sex sex_lbl

label define race_lbl 100 `"White"'
label define race_lbl 200 `"Black/Negro"', add
label define race_lbl 300 `"American Indian/Aleut/Eskimo"', add
label define race_lbl 650 `"Asian or Pacific Islander"', add
label define race_lbl 651 `"Asian only"', add
label define race_lbl 652 `"Hawaiian/Pacific Islander only"', add
label define race_lbl 700 `"Other (single) race, n.e.c."', add
label define race_lbl 801 `"White-Black"', add
label define race_lbl 802 `"White-American Indian"', add
label define race_lbl 803 `"White-Asian"', add
label define race_lbl 804 `"White-Hawaiian/Pacific Islander"', add
label define race_lbl 805 `"Black-American Indian"', add
label define race_lbl 806 `"Black-Asian"', add
label define race_lbl 807 `"Black-Hawaiian/Pacific Islander"', add
label define race_lbl 808 `"American Indian-Asian"', add
label define race_lbl 809 `"Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 810 `"White-Black-American Indian"', add
label define race_lbl 811 `"White-Black-Asian"', add
label define race_lbl 812 `"White-American Indian-Asian"', add
label define race_lbl 813 `"White-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 814 `"White-Black-American Indian-Asian"', add
label define race_lbl 815 `"American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 816 `"White-Black--Hawaiian/Pacific Islander"', add
label define race_lbl 817 `"White-American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 818 `"Black-American Indian-Asian"', add
label define race_lbl 819 `"White-American Indian-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 820 `"Two or three races, unspecified"', add
label define race_lbl 830 `"Four or five races, unspecified"', add
label define race_lbl 999 `"NIU"', add
label values race race_lbl

label define marst_lbl 1 `"Married, spouse present"'
label define marst_lbl 2 `"Married, spouse absent"', add
label define marst_lbl 3 `"Separated"', add
label define marst_lbl 4 `"Divorced"', add
label define marst_lbl 5 `"Widowed"', add
label define marst_lbl 6 `"Never married/single"', add
label define marst_lbl 7 `"Widowed or Divorced"', add
label define marst_lbl 9 `"Unknown"', add
label values marst marst_lbl

label define popstat_lbl 1 `"Adult civilian"'
label define popstat_lbl 2 `"Armed Forces"', add
label define popstat_lbl 3 `"Child"', add
label values popstat popstat_lbl

label define hispan_lbl 000 `"Not Hispanic"'
label define hispan_lbl 100 `"Mexican"', add
label define hispan_lbl 102 `"Mexican American"', add
label define hispan_lbl 103 `"Mexicano/Mexicana"', add
label define hispan_lbl 104 `"Chicano/Chicana"', add
label define hispan_lbl 108 `"Mexican (Mexicano)"', add
label define hispan_lbl 109 `"Mexicano/Chicano"', add
label define hispan_lbl 200 `"Puerto Rican"', add
label define hispan_lbl 300 `"Cuban"', add
label define hispan_lbl 400 `"Dominican"', add
label define hispan_lbl 500 `"Salvadoran"', add
label define hispan_lbl 401 `"Other Hispanic"', add
label define hispan_lbl 410 `"Central/South American"', add
label define hispan_lbl 411 `"Central American, (excluding Salvadoran)"', add
label define hispan_lbl 412 `"South American"', add
label define hispan_lbl 901 `"Do not know"', add
label define hispan_lbl 902 `"N/A (and no response 1985-87)"', add
label values hispan hispan_lbl

label define educ_lbl 000 `"NIU or no schooling"'
label define educ_lbl 001 `"NIU or blank"', add
label define educ_lbl 002 `"None or preschool"', add
label define educ_lbl 010 `"Grades 1, 2, 3, or 4"', add
label define educ_lbl 011 `"Grade 1"', add
label define educ_lbl 012 `"Grade 2"', add
label define educ_lbl 013 `"Grade 3"', add
label define educ_lbl 014 `"Grade 4"', add
label define educ_lbl 020 `"Grades 5 or 6"', add
label define educ_lbl 021 `"Grade 5"', add
label define educ_lbl 022 `"Grade 6"', add
label define educ_lbl 030 `"Grades 7 or 8"', add
label define educ_lbl 031 `"Grade 7"', add
label define educ_lbl 032 `"Grade 8"', add
label define educ_lbl 040 `"Grade 9"', add
label define educ_lbl 050 `"Grade 10"', add
label define educ_lbl 060 `"Grade 11"', add
label define educ_lbl 070 `"Grade 12"', add
label define educ_lbl 071 `"12th grade, no diploma"', add
label define educ_lbl 072 `"12th grade, diploma unclear"', add
label define educ_lbl 073 `"High school diploma or equivalent"', add
label define educ_lbl 080 `"1 year of college"', add
label define educ_lbl 081 `"Some college but no degree"', add
label define educ_lbl 090 `"2 years of college"', add
label define educ_lbl 091 `"Associate's degree, occupational/vocational program"', add
label define educ_lbl 092 `"Associate's degree, academic program"', add
label define educ_lbl 100 `"3 years of college"', add
label define educ_lbl 110 `"4 years of college"', add
label define educ_lbl 111 `"Bachelor's degree"', add
label define educ_lbl 120 `"5+ years of college"', add
label define educ_lbl 121 `"5 years of college"', add
label define educ_lbl 122 `"6+ years of college"', add
label define educ_lbl 123 `"Master's degree"', add
label define educ_lbl 124 `"Professional school degree"', add
label define educ_lbl 125 `"Doctorate degree"', add
label define educ_lbl 999 `"Missing/Unknown"', add
label values educ educ_lbl

label define higrade_lbl 000 `"NIU"'
label define higrade_lbl 010 `"None"', add
label define higrade_lbl 031 `"Did not finish 1st grade"', add
label define higrade_lbl 040 `"1st grade"', add
label define higrade_lbl 041 `"Did not finish 2nd grade"', add
label define higrade_lbl 050 `"2nd grade"', add
label define higrade_lbl 051 `"Did not finish 3rd grade"', add
label define higrade_lbl 060 `"3rd grade"', add
label define higrade_lbl 061 `"Did not finish 4th grade"', add
label define higrade_lbl 070 `"4th grade"', add
label define higrade_lbl 071 `"Did not finish 5th grade"', add
label define higrade_lbl 080 `"5th grade"', add
label define higrade_lbl 081 `"Did not finish 6th grade"', add
label define higrade_lbl 090 `"6th grade"', add
label define higrade_lbl 091 `"Did not finish 7th grade"', add
label define higrade_lbl 100 `"7th grade"', add
label define higrade_lbl 101 `"Did not finish 8th grade"', add
label define higrade_lbl 110 `"8th grade"', add
label define higrade_lbl 111 `"Did not finish 9th grade"', add
label define higrade_lbl 120 `"9th grade"', add
label define higrade_lbl 121 `"Did not finish 10th grade"', add
label define higrade_lbl 130 `"10th grade"', add
label define higrade_lbl 131 `"Did not finish 11th grade"', add
label define higrade_lbl 140 `"11th grade"', add
label define higrade_lbl 141 `"Did not finish 12th grade"', add
label define higrade_lbl 150 `"12th grade"', add
label define higrade_lbl 151 `"Did not finish 1st year college"', add
label define higrade_lbl 160 `"1st year college"', add
label define higrade_lbl 161 `"Did not finish 2nd year"', add
label define higrade_lbl 170 `"2nd year college"', add
label define higrade_lbl 171 `"Did not finish 3rd year"', add
label define higrade_lbl 180 `"3rd year college"', add
label define higrade_lbl 181 `"Did not finish 4th year"', add
label define higrade_lbl 190 `"4th year college"', add
label define higrade_lbl 191 `"Did not finish 5th year"', add
label define higrade_lbl 200 `"5th year college"', add
label define higrade_lbl 201 `"Did not finish 6th year"', add
label define higrade_lbl 210 `"6th year college"', add
label define higrade_lbl 999 `"Missing/Unknown"', add
label values higrade higrade_lbl

label define colleg75_lbl 0 `"NIU"'
label define colleg75_lbl 1 `"No"', add
label define colleg75_lbl 2 `"Yes"', add
label values colleg75 colleg75_lbl

label define colleg80_lbl 0 `"NIU"'
label define colleg80_lbl 1 `"No"', add
label define colleg80_lbl 2 `"Yes"', add
label values colleg80 colleg80_lbl

label define schlcoll_lbl 0 `"NIU"'
label define schlcoll_lbl 1 `"High school full time"', add
label define schlcoll_lbl 2 `"High school part time"', add
label define schlcoll_lbl 3 `"College or university full time"', add
label define schlcoll_lbl 4 `"College or university part time"', add
label define schlcoll_lbl 5 `"Does not attend school, college or university"', add
label values schlcoll schlcoll_lbl

label define empstat_lbl 00 `"NIU"'
label define empstat_lbl 01 `"Armed Forces"', add
label define empstat_lbl 10 `"At work"', add
label define empstat_lbl 12 `"Has job, not at work last week"', add
label define empstat_lbl 20 `"Unemployed"', add
label define empstat_lbl 21 `"Unemployed, experienced worker"', add
label define empstat_lbl 22 `"Unemployed, new worker"', add
label define empstat_lbl 30 `"Not in labor force"', add
label define empstat_lbl 31 `"NILF, housework"', add
label define empstat_lbl 32 `"NILF, unable to work"', add
label define empstat_lbl 33 `"NILF, school"', add
label define empstat_lbl 34 `"NILF, other"', add
label define empstat_lbl 35 `"NILF, unpaid, lt 15 hours"', add
label values empstat empstat_lbl

label define labforce_lbl 0 `"NIU"'
label define labforce_lbl 1 `"No, not in the labor force"', add
label define labforce_lbl 2 `"Yes, in the labor force"', add
label values labforce labforce_lbl

label define occ1990_lbl 003 `"Legislators"'
label define occ1990_lbl 004 `"Chief executives and public administrators"', add
label define occ1990_lbl 007 `"Financial managers"', add
label define occ1990_lbl 008 `"Human resources and labor relations managers"', add
label define occ1990_lbl 013 `"Managers and specialists in marketing, advertising, and public relations"', add
label define occ1990_lbl 014 `"Managers in education and related fields"', add
label define occ1990_lbl 015 `"Managers of medicine and health occupations"', add
label define occ1990_lbl 016 `"Postmasters and mail superintendents"', add
label define occ1990_lbl 017 `"Managers of food-serving and lodging establishments"', add
label define occ1990_lbl 018 `"Managers of properties and real estate"', add
label define occ1990_lbl 019 `"Funeral directors"', add
label define occ1990_lbl 021 `"Managers of service organizations, n.e.c."', add
label define occ1990_lbl 022 `"Managers and administrators, n.e.c."', add
label define occ1990_lbl 023 `"Accountants and auditors"', add
label define occ1990_lbl 024 `"Insurance underwriters"', add
label define occ1990_lbl 025 `"Other financial specialists"', add
label define occ1990_lbl 026 `"Management analysts"', add
label define occ1990_lbl 027 `"Personnel, HR, training, and labor relations specialists"', add
label define occ1990_lbl 028 `"Purchasing agents and buyers, of farm products"', add
label define occ1990_lbl 029 `"Buyers, wholesale and retail trade"', add
label define occ1990_lbl 033 `"Purchasing managers, agents and buyers, n.e.c."', add
label define occ1990_lbl 034 `"Business and promotion agents"', add
label define occ1990_lbl 035 `"Construction inspectors"', add
label define occ1990_lbl 036 `"Inspectors and compliance officers, outside construction"', add
label define occ1990_lbl 037 `"Management support occupations"', add
label define occ1990_lbl 043 `"Architects"', add
label define occ1990_lbl 044 `"Aerospace engineer"', add
label define occ1990_lbl 045 `"Metallurgical and materials engineers, variously phrased"', add
label define occ1990_lbl 047 `"Petroleum, mining, and geological engineers"', add
label define occ1990_lbl 048 `"Chemical engineers"', add
label define occ1990_lbl 053 `"Civil engineers"', add
label define occ1990_lbl 055 `"Electrical engineer"', add
label define occ1990_lbl 056 `"Industrial engineers"', add
label define occ1990_lbl 057 `"Mechanical engineers"', add
label define occ1990_lbl 059 `"Not-elsewhere-classified engineers"', add
label define occ1990_lbl 064 `"Computer systems analysts and computer scientists"', add
label define occ1990_lbl 065 `"Operations and systems researchers and analysts"', add
label define occ1990_lbl 066 `"Actuaries"', add
label define occ1990_lbl 067 `"Statisticians"', add
label define occ1990_lbl 068 `"Mathematicians and mathematical scientists"', add
label define occ1990_lbl 069 `"Physicists and astronomers"', add
label define occ1990_lbl 073 `"Chemists"', add
label define occ1990_lbl 074 `"Atmospheric and space scientists"', add
label define occ1990_lbl 075 `"Geologists"', add
label define occ1990_lbl 076 `"Physical scientists, n.e.c."', add
label define occ1990_lbl 077 `"Agricultural and food scientists"', add
label define occ1990_lbl 078 `"Biological scientists"', add
label define occ1990_lbl 079 `"Foresters and conservation scientists"', add
label define occ1990_lbl 083 `"Medical scientists"', add
label define occ1990_lbl 084 `"Physicians"', add
label define occ1990_lbl 085 `"Dentists"', add
label define occ1990_lbl 086 `"Veterinarians"', add
label define occ1990_lbl 087 `"Optometrists"', add
label define occ1990_lbl 088 `"Podiatrists"', add
label define occ1990_lbl 089 `"Other health and therapy"', add
label define occ1990_lbl 095 `"Registered nurses"', add
label define occ1990_lbl 096 `"Pharmacists"', add
label define occ1990_lbl 097 `"Dietitians and nutritionists"', add
label define occ1990_lbl 098 `"Respiratory therapists"', add
label define occ1990_lbl 099 `"Occupational therapists"', add
label define occ1990_lbl 103 `"Physical therapists"', add
label define occ1990_lbl 104 `"Speech therapists"', add
label define occ1990_lbl 105 `"Therapists, n.e.c."', add
label define occ1990_lbl 106 `"Physicians' assistants"', add
label define occ1990_lbl 113 `"Earth, environmental, and marine science instructors"', add
label define occ1990_lbl 114 `"Biological science instructors"', add
label define occ1990_lbl 115 `"Chemistry instructors"', add
label define occ1990_lbl 116 `"Physics instructors"', add
label define occ1990_lbl 118 `"Psychology instructors"', add
label define occ1990_lbl 119 `"Economics instructors"', add
label define occ1990_lbl 123 `"History instructors"', add
label define occ1990_lbl 125 `"Sociology instructors"', add
label define occ1990_lbl 127 `"Engineering instructors"', add
label define occ1990_lbl 128 `"Math instructors"', add
label define occ1990_lbl 139 `"Education instructors"', add
label define occ1990_lbl 145 `"Law instructors"', add
label define occ1990_lbl 147 `"Theology instructors"', add
label define occ1990_lbl 149 `"Home economics instructors"', add
label define occ1990_lbl 150 `"Humanities profs/instructors, college, nec"', add
label define occ1990_lbl 154 `"Subject instructors (HS/college)"', add
label define occ1990_lbl 155 `"Kindergarten and earlier school teachers"', add
label define occ1990_lbl 156 `"Primary school teachers"', add
label define occ1990_lbl 157 `"Secondary school teachers"', add
label define occ1990_lbl 158 `"Special education teachers"', add
label define occ1990_lbl 159 `"Teachers , n.e.c."', add
label define occ1990_lbl 163 `"Vocational and educational counselors"', add
label define occ1990_lbl 164 `"Librarians"', add
label define occ1990_lbl 165 `"Archivists and curators"', add
label define occ1990_lbl 166 `"Economists, market researchers, and survey researchers"', add
label define occ1990_lbl 167 `"Psychologists"', add
label define occ1990_lbl 168 `"Sociologists"', add
label define occ1990_lbl 169 `"Social scientists, n.e.c."', add
label define occ1990_lbl 173 `"Urban and regional planners"', add
label define occ1990_lbl 174 `"Social workers"', add
label define occ1990_lbl 175 `"Recreation workers"', add
label define occ1990_lbl 176 `"Clergy and religious workers"', add
label define occ1990_lbl 178 `"Lawyers "', add
label define occ1990_lbl 179 `"Judges"', add
label define occ1990_lbl 183 `"Writers and authors"', add
label define occ1990_lbl 184 `"Technical writers"', add
label define occ1990_lbl 185 `"Designers"', add
label define occ1990_lbl 186 `"Musician or composer"', add
label define occ1990_lbl 187 `"Actors, directors, producers"', add
label define occ1990_lbl 188 `"Art makers: painters, sculptors, craft-artists, and print-makers"', add
label define occ1990_lbl 189 `"Photographers"', add
label define occ1990_lbl 193 `"Dancers"', add
label define occ1990_lbl 194 `"Art/entertainment performers and related"', add
label define occ1990_lbl 195 `"Editors and reporters"', add
label define occ1990_lbl 198 `"Announcers"', add
label define occ1990_lbl 199 `"Athletes, sports instructors, and officials"', add
label define occ1990_lbl 200 `"Professionals, n.e.c."', add
label define occ1990_lbl 203 `"Clinical laboratory technologies and technicians"', add
label define occ1990_lbl 204 `"Dental hygenists"', add
label define occ1990_lbl 205 `"Health record tech specialists"', add
label define occ1990_lbl 206 `"Radiologic tech specialists"', add
label define occ1990_lbl 207 `"Licensed practical nurses"', add
label define occ1990_lbl 208 `"Health technologists and technicians, n.e.c."', add
label define occ1990_lbl 213 `"Electrical and electronic (engineering) technicians"', add
label define occ1990_lbl 214 `"Engineering technicians, n.e.c."', add
label define occ1990_lbl 215 `"Mechanical engineering technicians"', add
label define occ1990_lbl 217 `"Drafters"', add
label define occ1990_lbl 218 `"Surveyors, cartographers, mapping scientists and technicians"', add
label define occ1990_lbl 223 `"Biological technicians"', add
label define occ1990_lbl 224 `"Chemical technicians"', add
label define occ1990_lbl 225 `"Other science technicians"', add
label define occ1990_lbl 226 `"Airplane pilots and navigators"', add
label define occ1990_lbl 227 `"Air traffic controllers"', add
label define occ1990_lbl 228 `"Broadcast equipment operators"', add
label define occ1990_lbl 229 `"Computer software developers"', add
label define occ1990_lbl 233 `"Programmers of numerically controlled machine tools"', add
label define occ1990_lbl 234 `"Legal assistants, paralegals, legal support, etc"', add
label define occ1990_lbl 235 `"Technicians, n.e.c."', add
label define occ1990_lbl 243 `"Supervisors and proprietors of sales jobs"', add
label define occ1990_lbl 253 `"Insurance sales occupations"', add
label define occ1990_lbl 254 `"Real estate sales occupations"', add
label define occ1990_lbl 255 `"Financial services sales occupations"', add
label define occ1990_lbl 256 `"Advertising and related sales jobs"', add
label define occ1990_lbl 258 `"Sales engineers"', add
label define occ1990_lbl 274 `"Salespersons, n.e.c."', add
label define occ1990_lbl 275 `"Retail sales clerks"', add
label define occ1990_lbl 276 `"Cashiers"', add
label define occ1990_lbl 277 `"Door-to-door sales, street sales, and news vendors"', add
label define occ1990_lbl 283 `"Sales demonstrators / promoters / models"', add
label define occ1990_lbl 290 `"Sales workers--allocated (1990 internal census)"', add
label define occ1990_lbl 303 `"Office supervisors"', add
label define occ1990_lbl 308 `"Computer and peripheral equipment operators"', add
label define occ1990_lbl 313 `"Secretaries"', add
label define occ1990_lbl 314 `"Stenographers"', add
label define occ1990_lbl 315 `"Typists"', add
label define occ1990_lbl 316 `"Interviewers, enumerators, and surveyors"', add
label define occ1990_lbl 317 `"Hotel clerks"', add
label define occ1990_lbl 318 `"Transportation ticket and reservation agents"', add
label define occ1990_lbl 319 `"Receptionists"', add
label define occ1990_lbl 323 `"Information clerks, nec"', add
label define occ1990_lbl 326 `"Correspondence and order clerks"', add
label define occ1990_lbl 328 `"Human resources clerks, except payroll and timekeeping"', add
label define occ1990_lbl 329 `"Library assistants"', add
label define occ1990_lbl 335 `"File clerks"', add
label define occ1990_lbl 336 `"Records clerks"', add
label define occ1990_lbl 337 `"Bookkeepers and accounting and auditing clerks"', add
label define occ1990_lbl 338 `"Payroll and timekeeping clerks"', add
label define occ1990_lbl 343 `"Cost and rate clerks (financial records processing)"', add
label define occ1990_lbl 344 `"Billing clerks and related financial records processing"', add
label define occ1990_lbl 345 `"Duplication machine operators / office machine operators"', add
label define occ1990_lbl 346 `"Mail and paper handlers"', add
label define occ1990_lbl 347 `"Office machine operators, n.e.c."', add
label define occ1990_lbl 348 `"Telephone operators"', add
label define occ1990_lbl 349 `"Other telecom operators"', add
label define occ1990_lbl 354 `"Postal clerks, excluding mail carriers"', add
label define occ1990_lbl 355 `"Mail carriers for postal service"', add
label define occ1990_lbl 356 `"Mail clerks, outside of post office"', add
label define occ1990_lbl 357 `"Messengers"', add
label define occ1990_lbl 359 `"Dispatchers"', add
label define occ1990_lbl 361 `"Inspectors, n.e.c."', add
label define occ1990_lbl 364 `"Shipping and receiving clerks"', add
label define occ1990_lbl 365 `"Stock and inventory clerks"', add
label define occ1990_lbl 366 `"Meter readers"', add
label define occ1990_lbl 368 `"Weighers, measurers, and checkers"', add
label define occ1990_lbl 373 `"Material recording, scheduling, production, planning, and expediting clerks"', add
label define occ1990_lbl 375 `"Insurance adjusters, examiners, and investigators"', add
label define occ1990_lbl 376 `"Customer service reps, investigators and adjusters, except insurance"', add
label define occ1990_lbl 377 `"Eligibility clerks for government programs; social welfare"', add
label define occ1990_lbl 378 `"Bill and account collectors"', add
label define occ1990_lbl 379 `"General office clerks"', add
label define occ1990_lbl 383 `"Bank tellers"', add
label define occ1990_lbl 384 `"Proofreaders"', add
label define occ1990_lbl 385 `"Data entry keyers"', add
label define occ1990_lbl 386 `"Statistical clerks"', add
label define occ1990_lbl 387 `"Teacher's aides"', add
label define occ1990_lbl 389 `"Administrative support jobs, n.e.c."', add
label define occ1990_lbl 390 `"Professional, technical, and kindred workers--allocated (1990 internal census)"', add
label define occ1990_lbl 391 `"Clerical and kindred workers--allocated (1990 internal census)"', add
label define occ1990_lbl 405 `"Housekeepers, maids, butlers, stewards, and lodging quarters cleaners"', add
label define occ1990_lbl 407 `"Private household cleaners and servants"', add
label define occ1990_lbl 408 `"Private household workers--allocated (1990 internal census)"', add
label define occ1990_lbl 415 `"Supervisors of guards"', add
label define occ1990_lbl 417 `"Fire fighting, prevention, and inspection"', add
label define occ1990_lbl 418 `"Police, detectives, and private investigators"', add
label define occ1990_lbl 423 `"Other law enforcement: sheriffs, bailiffs, correctional institution officers"', add
label define occ1990_lbl 425 `"Crossing guards and bridge tenders"', add
label define occ1990_lbl 426 `"Guards, watchmen, doorkeepers"', add
label define occ1990_lbl 427 `"Protective services, n.e.c."', add
label define occ1990_lbl 434 `"Bartenders"', add
label define occ1990_lbl 435 `"Waiter/waitress"', add
label define occ1990_lbl 436 `"Cooks, variously defined"', add
label define occ1990_lbl 438 `"Food counter and fountain workers"', add
label define occ1990_lbl 439 `"Kitchen workers"', add
label define occ1990_lbl 443 `"Waiter's assistant"', add
label define occ1990_lbl 444 `"Misc food prep workers"', add
label define occ1990_lbl 445 `"Dental assistants"', add
label define occ1990_lbl 446 `"Health aides, except nursing"', add
label define occ1990_lbl 447 `"Nursing aides, orderlies, and attendants"', add
label define occ1990_lbl 448 `"Supervisors of cleaning and building service"', add
label define occ1990_lbl 453 `"Janitors"', add
label define occ1990_lbl 454 `"Elevator operators"', add
label define occ1990_lbl 455 `"Pest control occupations"', add
label define occ1990_lbl 456 `"Supervisors of personal service jobs, n.e.c."', add
label define occ1990_lbl 457 `"Barbers"', add
label define occ1990_lbl 458 `"Hairdressers and cosmetologists"', add
label define occ1990_lbl 459 `"Recreation facility attendants"', add
label define occ1990_lbl 461 `"Guides"', add
label define occ1990_lbl 462 `"Ushers"', add
label define occ1990_lbl 463 `"Public transportation attendants and inspectors"', add
label define occ1990_lbl 464 `"Baggage porters"', add
label define occ1990_lbl 465 `"Welfare service aides"', add
label define occ1990_lbl 468 `"Child care workers"', add
label define occ1990_lbl 469 `"Personal service occupations, nec"', add
label define occ1990_lbl 473 `"Farmers (owners and tenants)"', add
label define occ1990_lbl 474 `"Horticultural specialty farmers"', add
label define occ1990_lbl 475 `"Farm managers, except for horticultural farms"', add
label define occ1990_lbl 476 `"Managers of horticultural specialty farms"', add
label define occ1990_lbl 479 `"Farm workers"', add
label define occ1990_lbl 480 `"Farm laborers and farm foreman--allocated (1990 internal census)"', add
label define occ1990_lbl 483 `"Marine life cultivation workers"', add
label define occ1990_lbl 484 `"Nursery farming workers"', add
label define occ1990_lbl 485 `"Supervisors of agricultural occupations"', add
label define occ1990_lbl 486 `"Gardeners and groundskeepers"', add
label define occ1990_lbl 487 `"Animal caretakers except on farms"', add
label define occ1990_lbl 488 `"Graders and sorters of agricultural products"', add
label define occ1990_lbl 489 `"Inspectors of agricultural products"', add
label define occ1990_lbl 496 `"Timber, logging, and forestry workers"', add
label define occ1990_lbl 498 `"Fishers, hunters, and kindred"', add
label define occ1990_lbl 503 `"Supervisors of mechanics and repairers"', add
label define occ1990_lbl 505 `"Automobile mechanics"', add
label define occ1990_lbl 507 `"Bus, truck, and stationary engine mechanics"', add
label define occ1990_lbl 508 `"Aircraft mechanics"', add
label define occ1990_lbl 509 `"Small engine repairers"', add
label define occ1990_lbl 514 `"Auto body repairers"', add
label define occ1990_lbl 516 `"Heavy equipment and farm equipment mechanics"', add
label define occ1990_lbl 518 `"Industrial machinery repairers"', add
label define occ1990_lbl 519 `"Machinery maintenance occupations"', add
label define occ1990_lbl 523 `"Repairers of industrial electrical equipment "', add
label define occ1990_lbl 525 `"Repairers of data processing equipment"', add
label define occ1990_lbl 526 `"Repairers of household appliances and power tools"', add
label define occ1990_lbl 527 `"Telecom and line installers and repairers"', add
label define occ1990_lbl 533 `"Repairers of electrical equipment, n.e.c."', add
label define occ1990_lbl 534 `"Heating, air conditioning, and refigeration mechanics"', add
label define occ1990_lbl 535 `"Precision makers, repairers, and smiths"', add
label define occ1990_lbl 536 `"Locksmiths and safe repairers"', add
label define occ1990_lbl 538 `"Office machine repairers and mechanics"', add
label define occ1990_lbl 539 `"Repairers of mechanical controls and valves"', add
label define occ1990_lbl 543 `"Elevator installers and repairers"', add
label define occ1990_lbl 544 `"Millwrights"', add
label define occ1990_lbl 549 `"Mechanics and repairers, n.e.c."', add
label define occ1990_lbl 558 `"Supervisors of construction work"', add
label define occ1990_lbl 563 `"Masons, tilers, and carpet installers"', add
label define occ1990_lbl 567 `"Carpenters"', add
label define occ1990_lbl 573 `"Drywall installers"', add
label define occ1990_lbl 575 `"Electricians"', add
label define occ1990_lbl 577 `"Electric power installers and repairers"', add
label define occ1990_lbl 579 `"Painters, construction and maintenance"', add
label define occ1990_lbl 583 `"Paperhangers"', add
label define occ1990_lbl 584 `"Plasterers"', add
label define occ1990_lbl 585 `"Plumbers, pipe fitters, and steamfitters"', add
label define occ1990_lbl 588 `"Concrete and cement workers"', add
label define occ1990_lbl 589 `"Glaziers"', add
label define occ1990_lbl 593 `"Insulation workers"', add
label define occ1990_lbl 594 `"Paving, surfacing, and tamping equipment operators"', add
label define occ1990_lbl 595 `"Roofers and slaters"', add
label define occ1990_lbl 596 `"Sheet metal duct installers"', add
label define occ1990_lbl 597 `"Structural metal workers"', add
label define occ1990_lbl 598 `"Drillers of earth"', add
label define occ1990_lbl 599 `"Construction trades, n.e.c."', add
label define occ1990_lbl 614 `"Drillers of oil wells"', add
label define occ1990_lbl 615 `"Explosives workers"', add
label define occ1990_lbl 616 `"Miners"', add
label define occ1990_lbl 617 `"Other mining occupations"', add
label define occ1990_lbl 628 `"Production supervisors or foremen"', add
label define occ1990_lbl 634 `"Tool and die makers and die setters"', add
label define occ1990_lbl 637 `"Machinists"', add
label define occ1990_lbl 643 `"Boilermakers"', add
label define occ1990_lbl 644 `"Precision grinders and filers"', add
label define occ1990_lbl 645 `"Patternmakers and model makers"', add
label define occ1990_lbl 646 `"Lay-out workers"', add
label define occ1990_lbl 649 `"Engravers"', add
label define occ1990_lbl 653 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ1990_lbl 657 `"Cabinetmakers and bench carpenters"', add
label define occ1990_lbl 658 `"Furniture and wood finishers"', add
label define occ1990_lbl 659 `"Other precision woodworkers"', add
label define occ1990_lbl 666 `"Dressmakers and seamstresses"', add
label define occ1990_lbl 667 `"Tailors"', add
label define occ1990_lbl 668 `"Upholsterers"', add
label define occ1990_lbl 669 `"Shoe repairers"', add
label define occ1990_lbl 674 `"Other precision apparel and fabric workers"', add
label define occ1990_lbl 675 `"Hand molders and shapers, except jewelers "', add
label define occ1990_lbl 677 `"Optical goods workers"', add
label define occ1990_lbl 678 `"Dental laboratory and medical appliance technicians"', add
label define occ1990_lbl 679 `"Bookbinders"', add
label define occ1990_lbl 684 `"Other precision and craft workers"', add
label define occ1990_lbl 686 `"Butchers and meat cutters"', add
label define occ1990_lbl 687 `"Bakers"', add
label define occ1990_lbl 688 `"Batch food makers"', add
label define occ1990_lbl 693 `"Adjusters and calibrators"', add
label define occ1990_lbl 694 `"Water and sewage treatment plant operators"', add
label define occ1990_lbl 695 `"Power plant operators"', add
label define occ1990_lbl 696 `"Plant and system operators, stationary engineers "', add
label define occ1990_lbl 699 `"Other plant and system operators"', add
label define occ1990_lbl 703 `"Lathe, milling, and turning machine operatives"', add
label define occ1990_lbl 706 `"Punching and stamping press operatives"', add
label define occ1990_lbl 707 `"Rollers, roll hands, and finishers of metal"', add
label define occ1990_lbl 708 `"Drilling and boring machine operators"', add
label define occ1990_lbl 709 `"Grinding, abrading, buffing, and polishing workers"', add
label define occ1990_lbl 713 `"Forge and hammer operators"', add
label define occ1990_lbl 717 `"Fabricating machine operators, n.e.c."', add
label define occ1990_lbl 719 `"Molders, and casting machine operators"', add
label define occ1990_lbl 723 `"Metal platers"', add
label define occ1990_lbl 724 `"Heat treating equipment operators"', add
label define occ1990_lbl 726 `"Wood lathe, routing, and planing machine operators"', add
label define occ1990_lbl 727 `"Sawing machine operators and sawyers"', add
label define occ1990_lbl 728 `"Shaping and joining machine operator (woodworking)"', add
label define occ1990_lbl 729 `"Nail and tacking machine operators  (woodworking)"', add
label define occ1990_lbl 733 `"Other woodworking machine operators"', add
label define occ1990_lbl 734 `"Printing machine operators, n.e.c."', add
label define occ1990_lbl 735 `"Photoengravers and lithographers"', add
label define occ1990_lbl 736 `"Typesetters and compositors"', add
label define occ1990_lbl 738 `"Winding and twisting textile/apparel operatives"', add
label define occ1990_lbl 739 `"Knitters, loopers, and toppers textile operatives"', add
label define occ1990_lbl 743 `"Textile cutting machine operators"', add
label define occ1990_lbl 744 `"Textile sewing machine operators"', add
label define occ1990_lbl 745 `"Shoemaking machine operators"', add
label define occ1990_lbl 747 `"Pressing machine operators (clothing)"', add
label define occ1990_lbl 748 `"Laundry workers"', add
label define occ1990_lbl 749 `"Misc textile machine operators"', add
label define occ1990_lbl 753 `"Cementing and gluing maching operators"', add
label define occ1990_lbl 754 `"Packers, fillers, and wrappers"', add
label define occ1990_lbl 755 `"Extruding and forming machine operators"', add
label define occ1990_lbl 756 `"Mixing and blending machine operatives"', add
label define occ1990_lbl 757 `"Separating, filtering, and clarifying machine operators"', add
label define occ1990_lbl 759 `"Painting machine operators"', add
label define occ1990_lbl 763 `"Roasting and baking machine operators (food)"', add
label define occ1990_lbl 764 `"Washing, cleaning, and pickling machine operators"', add
label define occ1990_lbl 765 `"Paper folding machine operators"', add
label define occ1990_lbl 766 `"Furnace, kiln, and oven operators, apart from food"', add
label define occ1990_lbl 768 `"Crushing and grinding machine operators"', add
label define occ1990_lbl 769 `"Slicing and cutting machine operators"', add
label define occ1990_lbl 773 `"Motion picture projectionists"', add
label define occ1990_lbl 774 `"Photographic process workers"', add
label define occ1990_lbl 779 `"Machine operators, n.e.c."', add
label define occ1990_lbl 783 `"Welders and metal cutters"', add
label define occ1990_lbl 784 `"Solderers"', add
label define occ1990_lbl 785 `"Assemblers of electrical equipment"', add
label define occ1990_lbl 789 `"Hand painting, coating, and decorating occupations"', add
label define occ1990_lbl 796 `"Production checkers and inspectors"', add
label define occ1990_lbl 799 `"Graders and sorters in manufacturing"', add
label define occ1990_lbl 803 `"Supervisors of motor vehicle transportation"', add
label define occ1990_lbl 804 `"Truck, delivery, and tractor drivers"', add
label define occ1990_lbl 808 `"Bus drivers"', add
label define occ1990_lbl 809 `"Taxi cab drivers and chauffeurs"', add
label define occ1990_lbl 813 `"Parking lot attendants"', add
label define occ1990_lbl 815 `"Transport equipment operatives--allocated (1990 internal census)"', add
label define occ1990_lbl 823 `"Railroad conductors and yardmasters"', add
label define occ1990_lbl 824 `"Locomotive operators (engineers and firemen)"', add
label define occ1990_lbl 825 `"Railroad brake, coupler, and switch operators"', add
label define occ1990_lbl 829 `"Ship crews and marine engineers"', add
label define occ1990_lbl 834 `"Water transport infrastructure tenders and crossing guards"', add
label define occ1990_lbl 844 `"Operating engineers of construction equipment"', add
label define occ1990_lbl 848 `"Crane, derrick, winch, and hoist operators"', add
label define occ1990_lbl 853 `"Excavating and loading machine operators"', add
label define occ1990_lbl 859 `"Misc material moving occupations"', add
label define occ1990_lbl 865 `"Helpers, constructions"', add
label define occ1990_lbl 866 `"Helpers, surveyors"', add
label define occ1990_lbl 869 `"Construction laborers"', add
label define occ1990_lbl 874 `"Production helpers"', add
label define occ1990_lbl 875 `"Garbage and recyclable material collectors"', add
label define occ1990_lbl 876 `"Materials movers: stevedores and longshore workers"', add
label define occ1990_lbl 877 `"Stock handlers"', add
label define occ1990_lbl 878 `"Machine feeders and offbearers"', add
label define occ1990_lbl 883 `"Freight, stock, and materials handlers"', add
label define occ1990_lbl 885 `"Garage and service station related occupations"', add
label define occ1990_lbl 887 `"Vehicle washers and equipment cleaners"', add
label define occ1990_lbl 888 `"Packers and packagers by hand"', add
label define occ1990_lbl 889 `"Laborers outside construction"', add
label define occ1990_lbl 890 `"Laborers, except farm--allocated (1990 internal census)"', add
label define occ1990_lbl 905 `"Military"', add
label define occ1990_lbl 991 `"Unemployed"', add
label define occ1990_lbl 999 `"Unknown"', add
label values occ1990 occ1990_lbl

label define ind1990_lbl 000 `"NIU"'
label define ind1990_lbl 010 `"   Agricultural production, crops"', add
label define ind1990_lbl 011 `"   Agricultural production, livestock"', add
label define ind1990_lbl 012 `"   Veterinary services"', add
label define ind1990_lbl 020 `"   Landscape and horticultural services"', add
label define ind1990_lbl 030 `"   Agricultural services, n.e.c."', add
label define ind1990_lbl 031 `"   Forestry"', add
label define ind1990_lbl 032 `"   Fishing, hunting, and trapping "', add
label define ind1990_lbl 040 `"   Metal mining"', add
label define ind1990_lbl 041 `"   Coal mining"', add
label define ind1990_lbl 042 `"   Oil and gas extraction"', add
label define ind1990_lbl 050 `"   Nonmetallic mining and quarrying, except fuels "', add
label define ind1990_lbl 060 `"   All construction "', add
label define ind1990_lbl 100 `"         Meat products"', add
label define ind1990_lbl 101 `"         Dairy products"', add
label define ind1990_lbl 102 `"         Canned, frozen, and preserved fruits and vegetables"', add
label define ind1990_lbl 110 `"         Grain mill products"', add
label define ind1990_lbl 111 `"         Bakery products"', add
label define ind1990_lbl 112 `"         Sugar and confectionery products"', add
label define ind1990_lbl 120 `"         Beverage industries"', add
label define ind1990_lbl 121 `"         Misc. food preparations and kindred products"', add
label define ind1990_lbl 122 `"         Food industries, n.s."', add
label define ind1990_lbl 130 `"      Tobacco manufactures"', add
label define ind1990_lbl 132 `"         Knitting mills"', add
label define ind1990_lbl 140 `"         Dyeing and finishing textiles, except wool and knit goods"', add
label define ind1990_lbl 141 `"         Carpets and rugs"', add
label define ind1990_lbl 142 `"         Yarn, thread, and fabric mills"', add
label define ind1990_lbl 150 `"         Miscellaneous textile mill products"', add
label define ind1990_lbl 151 `"         Apparel and accessories, except knit"', add
label define ind1990_lbl 152 `"         Miscellaneous fabricated textile products"', add
label define ind1990_lbl 160 `"         Pulp, paper, and paperboard mills"', add
label define ind1990_lbl 161 `"         Miscellaneous paper and pulp products"', add
label define ind1990_lbl 162 `"         Paperboard containers and boxes"', add
label define ind1990_lbl 171 `"         Newspaper publishing and printing"', add
label define ind1990_lbl 172 `"         Printing, publishing, and allied industries, except newspapers"', add
label define ind1990_lbl 180 `"         Plastics, synthetics, and resins"', add
label define ind1990_lbl 181 `"         Drugs"', add
label define ind1990_lbl 182 `"         Soaps and cosmetics"', add
label define ind1990_lbl 190 `"         Paints, varnishes, and related products"', add
label define ind1990_lbl 191 `"         Agricultural chemicals"', add
label define ind1990_lbl 192 `"         Industrial and miscellaneous chemicals"', add
label define ind1990_lbl 200 `"         Petroleum refining"', add
label define ind1990_lbl 201 `"         Miscellaneous petroleum and coal products"', add
label define ind1990_lbl 210 `"         Tires and inner tubes"', add
label define ind1990_lbl 211 `"         Other rubber products, and plastics footwear and belting"', add
label define ind1990_lbl 212 `"         Miscellaneous plastics products"', add
label define ind1990_lbl 220 `"         Leather tanning and finishing"', add
label define ind1990_lbl 221 `"         Footwear, except rubber and plastic"', add
label define ind1990_lbl 222 `"         Leather products, except footwear"', add
label define ind1990_lbl 229 `"Manufacturing, non-durable - allocated"', add
label define ind1990_lbl 230 `"         Logging"', add
label define ind1990_lbl 231 `"         Sawmills, planing mills, and millwork"', add
label define ind1990_lbl 232 `"         Wood buildings and mobile homes"', add
label define ind1990_lbl 241 `"         Miscellaneous wood products"', add
label define ind1990_lbl 242 `"      Furniture and fixtures"', add
label define ind1990_lbl 250 `"         Glass and glass products"', add
label define ind1990_lbl 251 `"         Cement, concrete, gypsum, and plaster products"', add
label define ind1990_lbl 252 `"         Structural clay products"', add
label define ind1990_lbl 261 `"         Pottery and related products"', add
label define ind1990_lbl 262 `"         Misc. nonmetallic mineral and stone products"', add
label define ind1990_lbl 270 `"         Blast furnaces, steelworks, rolling and finishing mills"', add
label define ind1990_lbl 271 `"         Iron and steel foundries"', add
label define ind1990_lbl 272 `"         Primary aluminum industries"', add
label define ind1990_lbl 280 `"         Other primary metal industries"', add
label define ind1990_lbl 281 `"         Cutlery, handtools, and general hardware"', add
label define ind1990_lbl 282 `"         Fabricated structural metal products"', add
label define ind1990_lbl 290 `"         Screw machine products"', add
label define ind1990_lbl 291 `"         Metal forgings and stampings"', add
label define ind1990_lbl 292 `"         Ordnance"', add
label define ind1990_lbl 300 `"         Miscellaneous fabricated metal products"', add
label define ind1990_lbl 301 `"         Metal industries, n.s."', add
label define ind1990_lbl 310 `"         Engines and turbines"', add
label define ind1990_lbl 311 `"         Farm machinery and equipment"', add
label define ind1990_lbl 312 `"         Construction and material handling machines"', add
label define ind1990_lbl 320 `"         Metalworking machinery"', add
label define ind1990_lbl 321 `"         Office and accounting machines"', add
label define ind1990_lbl 322 `"         Computers and related equipment"', add
label define ind1990_lbl 331 `"         Machinery, except electrical, n.e.c."', add
label define ind1990_lbl 332 `"         Machinery, n.s."', add
label define ind1990_lbl 340 `"         Household appliances"', add
label define ind1990_lbl 341 `"         Radio, TV, and communication equipment"', add
label define ind1990_lbl 342 `"         Electrical machinery, equipment, and supplies, n.e.c."', add
label define ind1990_lbl 350 `"         Electrical machinery, equipment, and supplies, n.s."', add
label define ind1990_lbl 351 `"         Motor vehicles and motor vehicle equipment"', add
label define ind1990_lbl 352 `"         Aircraft and parts"', add
label define ind1990_lbl 360 `"         Ship and boat building and repairing"', add
label define ind1990_lbl 361 `"         Railroad locomotives and equipment"', add
label define ind1990_lbl 362 `"         Guided missiles, space vehicles, and parts"', add
label define ind1990_lbl 370 `"         Cycles and miscellaneous transportation equipment"', add
label define ind1990_lbl 371 `"         Scientific and controlling instruments"', add
label define ind1990_lbl 372 `"         Medical, dental, and optical instruments and supplies"', add
label define ind1990_lbl 380 `"         Photographic equipment and supplies"', add
label define ind1990_lbl 381 `"         Watches, clocks, and clockwork operated devices"', add
label define ind1990_lbl 390 `"      Toys, amusement, and sporting goods"', add
label define ind1990_lbl 391 `"      Miscellaneous manufacturing industries"', add
label define ind1990_lbl 392 `"      Manufacturing industries, n.s. "', add
label define ind1990_lbl 400 `"      Railroads"', add
label define ind1990_lbl 401 `"      Bus service and urban transit"', add
label define ind1990_lbl 402 `"      Taxicab service"', add
label define ind1990_lbl 410 `"      Trucking service"', add
label define ind1990_lbl 411 `"      Warehousing and storage"', add
label define ind1990_lbl 412 `"      U.S. Postal Service"', add
label define ind1990_lbl 420 `"      Water transportation"', add
label define ind1990_lbl 421 `"      Air transportation"', add
label define ind1990_lbl 422 `"      Pipe lines, except natural gas"', add
label define ind1990_lbl 432 `"      Services incidental to transportation"', add
label define ind1990_lbl 440 `"      Radio and television broadcasting and cable"', add
label define ind1990_lbl 441 `"      Wired communications"', add
label define ind1990_lbl 442 `"      Telegraph and miscellaneous communications services"', add
label define ind1990_lbl 450 `"      Electric light and power"', add
label define ind1990_lbl 451 `"      Gas and steam supply systems"', add
label define ind1990_lbl 452 `"      Electric and gas, and other combinations"', add
label define ind1990_lbl 470 `"      Water supply and irrigation"', add
label define ind1990_lbl 471 `"      Sanitary services"', add
label define ind1990_lbl 472 `"      Utilities, n.s. "', add
label define ind1990_lbl 500 `"      Motor vehicles and equipment"', add
label define ind1990_lbl 501 `"      Furniture and home furnishings"', add
label define ind1990_lbl 502 `"      Lumber and construction materials"', add
label define ind1990_lbl 510 `"      Professional and commercial equipment and supplies"', add
label define ind1990_lbl 511 `"      Metals and minerals, except petroleum"', add
label define ind1990_lbl 512 `"      Electrical goods"', add
label define ind1990_lbl 521 `"      Hardware, plumbing and heating supplies"', add
label define ind1990_lbl 530 `"      Machinery, equipment, and supplies"', add
label define ind1990_lbl 531 `"      Scrap and waste materials"', add
label define ind1990_lbl 532 `"      Miscellaneous wholesale, durable goods"', add
label define ind1990_lbl 540 `"      Paper and paper products"', add
label define ind1990_lbl 541 `"      Drugs, chemicals, and allied products"', add
label define ind1990_lbl 542 `"      Apparel, fabrics, and notions"', add
label define ind1990_lbl 550 `"      Groceries and related products"', add
label define ind1990_lbl 551 `"      Farm-product raw materials"', add
label define ind1990_lbl 552 `"      Petroleum products"', add
label define ind1990_lbl 560 `"      Alcoholic beverages"', add
label define ind1990_lbl 561 `"      Farm supplies"', add
label define ind1990_lbl 562 `"      Miscellaneous wholesale, nondurable goods"', add
label define ind1990_lbl 571 `"      Wholesale trade, n.s. "', add
label define ind1990_lbl 580 `"   Lumber and building material retailing"', add
label define ind1990_lbl 581 `"   Hardware stores"', add
label define ind1990_lbl 582 `"   Retail nurseries and garden stores"', add
label define ind1990_lbl 590 `"   Mobile home dealers"', add
label define ind1990_lbl 591 `"   Department stores"', add
label define ind1990_lbl 592 `"   Variety stores"', add
label define ind1990_lbl 600 `"   Miscellaneous general merchandise stores"', add
label define ind1990_lbl 601 `"   Grocery stores"', add
label define ind1990_lbl 602 `"   Dairy products stores"', add
label define ind1990_lbl 610 `"   Retail bakeries"', add
label define ind1990_lbl 611 `"   Food stores, n.e.c."', add
label define ind1990_lbl 612 `"   Motor vehicle dealers"', add
label define ind1990_lbl 620 `"   Auto and home supply stores"', add
label define ind1990_lbl 621 `"   Gasoline service stations"', add
label define ind1990_lbl 622 `"   Miscellaneous vehicle dealers"', add
label define ind1990_lbl 623 `"   Apparel and accessory stores, except shoe"', add
label define ind1990_lbl 630 `"   Shoe stores"', add
label define ind1990_lbl 631 `"   Furniture and home furnishings stores"', add
label define ind1990_lbl 632 `"   Household appliance stores"', add
label define ind1990_lbl 633 `"   Radio, TV, and computer stores"', add
label define ind1990_lbl 640 `"   Music stores"', add
label define ind1990_lbl 641 `"   Eating and drinking places"', add
label define ind1990_lbl 642 `"   Drug stores"', add
label define ind1990_lbl 650 `"   Liquor stores"', add
label define ind1990_lbl 651 `"   Sporting goods, bicycles, and hobby stores"', add
label define ind1990_lbl 652 `"   Book and stationery stores"', add
label define ind1990_lbl 660 `"   Jewelry stores"', add
label define ind1990_lbl 661 `"   Gift, novelty, and souvenir shops"', add
label define ind1990_lbl 662 `"   Sewing, needlework, and piece goods stores"', add
label define ind1990_lbl 663 `"   Catalog and mail order houses"', add
label define ind1990_lbl 670 `"   Vending machine operators"', add
label define ind1990_lbl 671 `"   Direct selling establishments"', add
label define ind1990_lbl 672 `"   Fuel dealers"', add
label define ind1990_lbl 681 `"   Retail florists"', add
label define ind1990_lbl 682 `"   Miscellaneous retail stores"', add
label define ind1990_lbl 691 `"   Retail trade, n.s. "', add
label define ind1990_lbl 700 `"   Banking"', add
label define ind1990_lbl 701 `"   Savings institutions, including credit unions"', add
label define ind1990_lbl 702 `"   Credit agencies, n.e.c."', add
label define ind1990_lbl 710 `"   Security, commodity brokerage, and investment companies"', add
label define ind1990_lbl 711 `"   Insurance"', add
label define ind1990_lbl 712 `"   Real estate, including real estate-insurance offices "', add
label define ind1990_lbl 721 `"   Advertising"', add
label define ind1990_lbl 722 `"   Services to dwellings and other buildings"', add
label define ind1990_lbl 731 `"   Personnel supply services"', add
label define ind1990_lbl 732 `"   Computer and data processing services"', add
label define ind1990_lbl 740 `"   Detective and protective services"', add
label define ind1990_lbl 741 `"   Business services, n.e.c."', add
label define ind1990_lbl 742 `"   Automotive rental and leasing, without drivers"', add
label define ind1990_lbl 750 `"   Automobile parking and carwashes"', add
label define ind1990_lbl 751 `"   Automotive repair and related services"', add
label define ind1990_lbl 752 `"   Electrical repair shops"', add
label define ind1990_lbl 760 `"   Miscellaneous repair services "', add
label define ind1990_lbl 761 `"   Private households"', add
label define ind1990_lbl 762 `"   Hotels and motels"', add
label define ind1990_lbl 770 `"   Lodging places, except hotels and motels"', add
label define ind1990_lbl 771 `"   Laundry, cleaning, and garment services"', add
label define ind1990_lbl 772 `"   Beauty shops"', add
label define ind1990_lbl 780 `"   Barber shops"', add
label define ind1990_lbl 781 `"   Funeral service and crematories"', add
label define ind1990_lbl 782 `"   Shoe repair shops"', add
label define ind1990_lbl 790 `"   Dressmaking shops"', add
label define ind1990_lbl 791 `"   Miscellaneous personal services "', add
label define ind1990_lbl 800 `"   Theaters and motion pictures"', add
label define ind1990_lbl 801 `"   Video tape rental"', add
label define ind1990_lbl 802 `"   Bowling centers"', add
label define ind1990_lbl 810 `"   Miscellaneous entertainment and recreation services "', add
label define ind1990_lbl 812 `"   Offices and clinics of physicians"', add
label define ind1990_lbl 820 `"   Offices and clinics of dentists"', add
label define ind1990_lbl 821 `"   Offices and clinics of chiropractors"', add
label define ind1990_lbl 822 `"   Offices and clinics of optometrists"', add
label define ind1990_lbl 830 `"   Offices and clinics of health practitioners, n.e.c."', add
label define ind1990_lbl 831 `"   Hospitals"', add
label define ind1990_lbl 832 `"   Nursing and personal care facilities"', add
label define ind1990_lbl 840 `"   Health services, n.e.c."', add
label define ind1990_lbl 841 `"   Legal services"', add
label define ind1990_lbl 842 `"   Elementary and secondary schools"', add
label define ind1990_lbl 850 `"   Colleges and universities"', add
label define ind1990_lbl 851 `"   Vocational schools"', add
label define ind1990_lbl 852 `"   Libraries"', add
label define ind1990_lbl 860 `"   Educational services, n.e.c."', add
label define ind1990_lbl 861 `"   Job training and vocational rehabilitation services"', add
label define ind1990_lbl 862 `"   Child day care services"', add
label define ind1990_lbl 863 `"   Family child care homes"', add
label define ind1990_lbl 870 `"   Residential care facilities, without nursing"', add
label define ind1990_lbl 871 `"   Social services, n.e.c."', add
label define ind1990_lbl 872 `"   Museums, art galleries, and zoos"', add
label define ind1990_lbl 873 `"   Labor unions"', add
label define ind1990_lbl 880 `"   Religious organizations"', add
label define ind1990_lbl 881 `"   Membership organizations, n.e.c."', add
label define ind1990_lbl 882 `"   Engineering, architectural, and surveying services"', add
label define ind1990_lbl 890 `"   Accounting, auditing, and bookkeeping services"', add
label define ind1990_lbl 891 `"   Research, development, and testing services"', add
label define ind1990_lbl 892 `"   Management and public relations services"', add
label define ind1990_lbl 893 `"   Miscellaneous professional and related services "', add
label define ind1990_lbl 900 `"   Executive and legislative offices"', add
label define ind1990_lbl 901 `"   General government, n.e.c."', add
label define ind1990_lbl 910 `"   Justice, public order, and safety"', add
label define ind1990_lbl 921 `"   Public finance, taxation, and monetary policy"', add
label define ind1990_lbl 922 `"   Administration of human resources programs"', add
label define ind1990_lbl 930 `"   Administration of environmental quality and housing programs"', add
label define ind1990_lbl 931 `"   Administration of economic programs"', add
label define ind1990_lbl 932 `"   National security and international affairs "', add
label define ind1990_lbl 940 `"      Army"', add
label define ind1990_lbl 941 `"      Air Force"', add
label define ind1990_lbl 942 `"      Navy"', add
label define ind1990_lbl 950 `"      Marines"', add
label define ind1990_lbl 951 `"      Coast Guard"', add
label define ind1990_lbl 952 `"      Armed Forces, branch not specified"', add
label define ind1990_lbl 960 `"      Military Reserves or National Guard "', add
label define ind1990_lbl 998 `"Unknown"', add
label values ind1990 ind1990_lbl

label define occ1950_lbl 000 `"Accountants and auditors"'
label define occ1950_lbl 001 `"Actors and actresses"', add
label define occ1950_lbl 002 `"Airplane pilots and navigators"', add
label define occ1950_lbl 003 `"Architects"', add
label define occ1950_lbl 004 `"Artists and art teachers"', add
label define occ1950_lbl 005 `"Athletes"', add
label define occ1950_lbl 006 `"Authors"', add
label define occ1950_lbl 007 `"Chemists"', add
label define occ1950_lbl 008 `"Chiropractors"', add
label define occ1950_lbl 009 `"Clergymen"', add
label define occ1950_lbl 010 `"College presidents and deans"', add
label define occ1950_lbl 012 `"Agricultural sciences"', add
label define occ1950_lbl 013 `"Biological sciences"', add
label define occ1950_lbl 014 `"Chemistry"', add
label define occ1950_lbl 015 `"Economics"', add
label define occ1950_lbl 016 `"Engineering"', add
label define occ1950_lbl 017 `"Geology and geophysics"', add
label define occ1950_lbl 018 `"Mathematics"', add
label define occ1950_lbl 019 `"Medical sciences"', add
label define occ1950_lbl 023 `"Physics"', add
label define occ1950_lbl 024 `"Psychology"', add
label define occ1950_lbl 025 `"Statistics"', add
label define occ1950_lbl 026 `"Natural science (n.e.c.)"', add
label define occ1950_lbl 027 `"Social sciences (n.e.c.)"', add
label define occ1950_lbl 028 `"Nonscientific subjects"', add
label define occ1950_lbl 029 `"Subject not specified"', add
label define occ1950_lbl 031 `"Dancers and dancing teachers"', add
label define occ1950_lbl 032 `"Dentists"', add
label define occ1950_lbl 033 `"Designers"', add
label define occ1950_lbl 034 `"Dieticians and nutritionists"', add
label define occ1950_lbl 035 `"Draftsmen"', add
label define occ1950_lbl 036 `"Editors and reporters"', add
label define occ1950_lbl 041 `"Engineers, aeronautical"', add
label define occ1950_lbl 042 `"Engineers, chemical"', add
label define occ1950_lbl 043 `"Engineers, civil"', add
label define occ1950_lbl 044 `"Engineers, electrical"', add
label define occ1950_lbl 045 `"Engineers, industrial"', add
label define occ1950_lbl 046 `"Engineers, mechanical"', add
label define occ1950_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define occ1950_lbl 048 `"Engineers, mining"', add
label define occ1950_lbl 049 `"Engineers (n.e.c.)"', add
label define occ1950_lbl 051 `"Entertainers (n.e.c.)"', add
label define occ1950_lbl 052 `"Farm and home management advisors"', add
label define occ1950_lbl 053 `"Foresters and conservationists"', add
label define occ1950_lbl 054 `"Funeral directors and embalmers"', add
label define occ1950_lbl 055 `"Lawyers and judges"', add
label define occ1950_lbl 056 `"Librarians"', add
label define occ1950_lbl 057 `"Musicians and music teachers"', add
label define occ1950_lbl 058 `"Nurses, professional"', add
label define occ1950_lbl 059 `"Nurses, student professional"', add
label define occ1950_lbl 061 `"Agricultural scientists"', add
label define occ1950_lbl 062 `"Biological scientists"', add
label define occ1950_lbl 063 `"Geologists and geophysicists"', add
label define occ1950_lbl 067 `"Mathematicians"', add
label define occ1950_lbl 068 `"Physicists"', add
label define occ1950_lbl 069 `"Miscellaneous natural scientists"', add
label define occ1950_lbl 070 `"Optometrists"', add
label define occ1950_lbl 071 `"Osteopaths"', add
label define occ1950_lbl 072 `"Personnel and labor relations workers"', add
label define occ1950_lbl 073 `"Pharmacists"', add
label define occ1950_lbl 074 `"Photographers"', add
label define occ1950_lbl 075 `"Physicians and surgeons"', add
label define occ1950_lbl 076 `"Radio operators"', add
label define occ1950_lbl 077 `"Recreation and group workers"', add
label define occ1950_lbl 078 `"Religious workers"', add
label define occ1950_lbl 079 `"Social and welfare workers, except group"', add
label define occ1950_lbl 081 `"Economists"', add
label define occ1950_lbl 082 `"Psychologists"', add
label define occ1950_lbl 083 `"Statisticians and actuaries"', add
label define occ1950_lbl 084 `"Miscellaneous social scientists"', add
label define occ1950_lbl 091 `"Sports instructors and officials"', add
label define occ1950_lbl 092 `"Surveyors"', add
label define occ1950_lbl 093 `"Teachers (n.e.c.)"', add
label define occ1950_lbl 094 `"Technicians, medical and dental"', add
label define occ1950_lbl 095 `"Technicians, testing"', add
label define occ1950_lbl 096 `"Technicians (n.e.c.)"', add
label define occ1950_lbl 097 `"Therapists and healers (n.e.c.)"', add
label define occ1950_lbl 098 `"Veterinarians"', add
label define occ1950_lbl 099 `"Professional, technical and kindred workers (n.e.c.)"', add
label define occ1950_lbl 100 `"Farmers (owners and tenants)"', add
label define occ1950_lbl 123 `"Farm managers"', add
label define occ1950_lbl 200 `"Buyers and department heads, store"', add
label define occ1950_lbl 201 `"Buyers and shippers, farm products"', add
label define occ1950_lbl 203 `"Conductors, railroad"', add
label define occ1950_lbl 204 `"Credit men"', add
label define occ1950_lbl 205 `"Floormen and floor managers, store"', add
label define occ1950_lbl 210 `"Inspectors, public administration"', add
label define occ1950_lbl 230 `"Managers and superintendents, building"', add
label define occ1950_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ1950_lbl 250 `"Officials and administrators (n.e.c.), public administration"', add
label define occ1950_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ1950_lbl 270 `"Postmasters"', add
label define occ1950_lbl 280 `"Purchasing agents and buyers (n.e.c.)"', add
label define occ1950_lbl 290 `"Managers, officials, and proprietors (n.e.c.)"', add
label define occ1950_lbl 300 `"Agents (n.e.c.)"', add
label define occ1950_lbl 301 `"Attendants and assistants, library"', add
label define occ1950_lbl 302 `"Attendants, physicians and dentists office"', add
label define occ1950_lbl 304 `"Baggagemen, transportation"', add
label define occ1950_lbl 305 `"Bank tellers"', add
label define occ1950_lbl 310 `"Bookkeepers"', add
label define occ1950_lbl 320 `"Cashiers"', add
label define occ1950_lbl 321 `"Collectors, bill and account"', add
label define occ1950_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ1950_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ1950_lbl 335 `"Mail carriers"', add
label define occ1950_lbl 340 `"Messengers and office boys"', add
label define occ1950_lbl 341 `"Office machine operators"', add
label define occ1950_lbl 342 `"Shipping and receiving clerks"', add
label define occ1950_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ1950_lbl 360 `"Telegraph messengers"', add
label define occ1950_lbl 365 `"Telegraph operators"', add
label define occ1950_lbl 370 `"Telephone operators"', add
label define occ1950_lbl 380 `"Ticket, station, and express agents"', add
label define occ1950_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ1950_lbl 400 `"Advertising agents and salesmen"', add
label define occ1950_lbl 410 `"Auctioneers"', add
label define occ1950_lbl 420 `"Demonstrators"', add
label define occ1950_lbl 430 `"Hucksters and peddlers"', add
label define occ1950_lbl 450 `"Insurance agents and brokers"', add
label define occ1950_lbl 460 `"Newsboys"', add
label define occ1950_lbl 470 `"Real estate agents and brokers"', add
label define occ1950_lbl 480 `"Stock and bond salesmen"', add
label define occ1950_lbl 490 `"Salesmen and sales clerks (n.e.c.)"', add
label define occ1950_lbl 500 `"Bakers"', add
label define occ1950_lbl 501 `"Blacksmiths"', add
label define occ1950_lbl 502 `"Bookbinders"', add
label define occ1950_lbl 503 `"Boilermakers"', add
label define occ1950_lbl 504 `"Brickmasons, stonemasons, and tile setters"', add
label define occ1950_lbl 505 `"Cabinetmakers"', add
label define occ1950_lbl 510 `"Carpenters"', add
label define occ1950_lbl 511 `"Cement and concrete finishers"', add
label define occ1950_lbl 512 `"Compositors and typesetters"', add
label define occ1950_lbl 513 `"Cranemen, derrickmen, and hoistmen"', add
label define occ1950_lbl 514 `"Decorators and window dressers"', add
label define occ1950_lbl 515 `"Electricians"', add
label define occ1950_lbl 520 `"Electrotypers and stereotypers"', add
label define occ1950_lbl 521 `"Engravers, except photoengravers"', add
label define occ1950_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ1950_lbl 523 `"Foremen (n.e.c.)"', add
label define occ1950_lbl 524 `"Forgemen and hammermen"', add
label define occ1950_lbl 525 `"Furriers"', add
label define occ1950_lbl 530 `"Glaziers"', add
label define occ1950_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ1950_lbl 532 `"Inspectors, scalers, and graders, log and lumber"', add
label define occ1950_lbl 533 `"Inspectors (n.e.c.)"', add
label define occ1950_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ1950_lbl 535 `"Job setters, metal"', add
label define occ1950_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ1950_lbl 541 `"Locomotive engineers"', add
label define occ1950_lbl 542 `"Locomotive firemen"', add
label define occ1950_lbl 543 `"Loom fixers"', add
label define occ1950_lbl 544 `"Machinists"', add
label define occ1950_lbl 545 `"Mechanics and repairmen, airplane"', add
label define occ1950_lbl 550 `"Mechanics and repairmen, automobile"', add
label define occ1950_lbl 551 `"Mechanics and repairmen, office machine"', add
label define occ1950_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define occ1950_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define occ1950_lbl 554 `"Mechanics and repairmen (n.e.c.)"', add
label define occ1950_lbl 555 `"Millers, grain, flour, feed, etc."', add
label define occ1950_lbl 560 `"Millwrights"', add
label define occ1950_lbl 561 `"Molders, metal"', add
label define occ1950_lbl 562 `"Motion picture projectionists"', add
label define occ1950_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ1950_lbl 564 `"Painters, construction and maintenance"', add
label define occ1950_lbl 565 `"Paperhangers"', add
label define occ1950_lbl 570 `"Pattern and model makers, except paper"', add
label define occ1950_lbl 571 `"Photoengravers and lithographers"', add
label define occ1950_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ1950_lbl 573 `"Plasterers"', add
label define occ1950_lbl 574 `"Plumbers and pipe fitters"', add
label define occ1950_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ1950_lbl 580 `"Rollers and roll hands, metal"', add
label define occ1950_lbl 581 `"Roofers and slaters"', add
label define occ1950_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ1950_lbl 583 `"Stationary engineers"', add
label define occ1950_lbl 584 `"Stone cutters and stone carvers"', add
label define occ1950_lbl 585 `"Structural metal workers"', add
label define occ1950_lbl 590 `"Tailors and tailoresses"', add
label define occ1950_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ1950_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ1950_lbl 593 `"Upholsterers"', add
label define occ1950_lbl 594 `"Craftsmen and kindred workers (n.e.c.)"', add
label define occ1950_lbl 595 `"Members of the armed services"', add
label define occ1950_lbl 600 `"Apprentice auto mechanics"', add
label define occ1950_lbl 601 `"Apprentice bricklayers and masons"', add
label define occ1950_lbl 602 `"Apprentice carpenters"', add
label define occ1950_lbl 603 `"Apprentice electricians"', add
label define occ1950_lbl 604 `"Apprentice machinists and toolmakers"', add
label define occ1950_lbl 605 `"Apprentice mechanics, except auto"', add
label define occ1950_lbl 610 `"Apprentice plumbers and pipe fitters"', add
label define occ1950_lbl 611 `"Apprentices, building trades (n.e.c.)"', add
label define occ1950_lbl 612 `"Apprentices, metalworking trades (n.e.c.)"', add
label define occ1950_lbl 613 `"Apprentices, printing trades"', add
label define occ1950_lbl 614 `"Apprentices, other specified trades"', add
label define occ1950_lbl 615 `"Apprentices, trade not specified"', add
label define occ1950_lbl 620 `"Asbestos and insulation workers"', add
label define occ1950_lbl 621 `"Attendants, auto service and parking"', add
label define occ1950_lbl 622 `"Blasters and powdermen"', add
label define occ1950_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ1950_lbl 624 `"Brakemen, railroad"', add
label define occ1950_lbl 625 `"Bus drivers"', add
label define occ1950_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ1950_lbl 631 `"Conductors, bus and street railway"', add
label define occ1950_lbl 632 `"Deliverymen and routemen"', add
label define occ1950_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define occ1950_lbl 634 `"Dyers"', add
label define occ1950_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ1950_lbl 640 `"Fruit, nut, veg graders and packers, except factory"', add
label define occ1950_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ1950_lbl 642 `"Heaters, metal"', add
label define occ1950_lbl 643 `"Laundry and dry cleaning operatives"', add
label define occ1950_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ1950_lbl 645 `"Milliners"', add
label define occ1950_lbl 650 `"Mine operatives and laborers"', add
label define occ1950_lbl 660 `"Motormen, mine, factory, logging camp, etc."', add
label define occ1950_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ1950_lbl 662 `"Oilers and greaser, except auto"', add
label define occ1950_lbl 670 `"Painters, except construction or maintenance"', add
label define occ1950_lbl 671 `"Photographic process workers"', add
label define occ1950_lbl 672 `"Power station operators"', add
label define occ1950_lbl 673 `"Sailors and deck hands"', add
label define occ1950_lbl 674 `"Sawyers"', add
label define occ1950_lbl 675 `"Spinners, textile"', add
label define occ1950_lbl 680 `"Stationary firemen"', add
label define occ1950_lbl 681 `"Switchmen, railroad"', add
label define occ1950_lbl 682 `"Taxicab drivers and chauffers"', add
label define occ1950_lbl 683 `"Truck and tractor drivers"', add
label define occ1950_lbl 684 `"Weavers, textile"', add
label define occ1950_lbl 685 `"Welders and flame cutters"', add
label define occ1950_lbl 690 `"Operative and kindred workers (n.e.c.)"', add
label define occ1950_lbl 700 `"Housekeepers, private household"', add
label define occ1950_lbl 710 `"Laundressses, private household"', add
label define occ1950_lbl 720 `"Private household workers (n.e.c.)"', add
label define occ1950_lbl 730 `"Attendants, hospital and other institution"', add
label define occ1950_lbl 731 `"Attendants, professional and personal service (n.e.c.)"', add
label define occ1950_lbl 732 `"Attendants, recreation and amusement"', add
label define occ1950_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ1950_lbl 750 `"Bartenders"', add
label define occ1950_lbl 751 `"Bootblacks"', add
label define occ1950_lbl 752 `"Boarding and lodging house keepers"', add
label define occ1950_lbl 753 `"Charwomen and cleaners"', add
label define occ1950_lbl 754 `"Cooks, except private household"', add
label define occ1950_lbl 760 `"Counter and fountain workers"', add
label define occ1950_lbl 761 `"Elevator operators"', add
label define occ1950_lbl 762 `"Firemen, fire protection"', add
label define occ1950_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ1950_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ1950_lbl 770 `"Janitors and sextons"', add
label define occ1950_lbl 771 `"Marshals and constables"', add
label define occ1950_lbl 772 `"Midwives"', add
label define occ1950_lbl 773 `"Policemen and detectives"', add
label define occ1950_lbl 780 `"Porters"', add
label define occ1950_lbl 781 `"Practical nurses"', add
label define occ1950_lbl 782 `"Sheriffs and bailiffs"', add
label define occ1950_lbl 783 `"Ushers, recreation and amusement"', add
label define occ1950_lbl 784 `"Waiters and waitresses"', add
label define occ1950_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ1950_lbl 790 `"Service workers, except private household (n.e.c.)"', add
label define occ1950_lbl 810 `"Farm foremen"', add
label define occ1950_lbl 820 `"Farm laborers, wage workers"', add
label define occ1950_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ1950_lbl 840 `"Farm service laborers, self-employed"', add
label define occ1950_lbl 910 `"Fishermen and oystermen"', add
label define occ1950_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ1950_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define occ1950_lbl 940 `"Longshoremen and stevedores"', add
label define occ1950_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ1950_lbl 960 `"Teamsters"', add
label define occ1950_lbl 970 `"Laborers (n.e.c.)"', add
label define occ1950_lbl 997 `"Unknown"', add
label define occ1950_lbl 999 `"Unemployed- last worked over x years ago"', add
label values occ1950 occ1950_lbl

label define ind1950_lbl 000 `"NIU"'
label define ind1950_lbl 105 `"Agriculture"', add
label define ind1950_lbl 116 `"Forestry"', add
label define ind1950_lbl 126 `"Fisheries"', add
label define ind1950_lbl 206 `"Metal mining"', add
label define ind1950_lbl 216 `"Coal mining"', add
label define ind1950_lbl 226 `"Crude petroleum and natural gas extraction"', add
label define ind1950_lbl 236 `"Nonmetallic mining and quarrying, except fuel"', add
label define ind1950_lbl 246 `"Construction"', add
label define ind1950_lbl 306 `"Logging"', add
label define ind1950_lbl 307 `"Sawmills, planing mills, and millwork"', add
label define ind1950_lbl 308 `"Misc wood products"', add
label define ind1950_lbl 309 `"Furniture and fixtures"', add
label define ind1950_lbl 316 `"Glass and glass products"', add
label define ind1950_lbl 317 `"Cement, concrete, gypsum and plaster products"', add
label define ind1950_lbl 318 `"Structural clay products"', add
label define ind1950_lbl 319 `"Pottery and related products"', add
label define ind1950_lbl 326 `"Miscellaneous nonmetallic mineral and stone products"', add
label define ind1950_lbl 336 `"Blast furnaces, steel works, and rolling mills"', add
label define ind1950_lbl 337 `"Other primary iron and steel industries"', add
label define ind1950_lbl 338 `"Primary nonferrous industries"', add
label define ind1950_lbl 346 `"Fabricated steel products"', add
label define ind1950_lbl 347 `"Fabricated nonferrous metal products"', add
label define ind1950_lbl 348 `"Not specified metal industries"', add
label define ind1950_lbl 356 `"Agricultural machinery and tractors"', add
label define ind1950_lbl 357 `"Office and store machines and devices"', add
label define ind1950_lbl 358 `"Miscellaneous machinery"', add
label define ind1950_lbl 367 `"Electrical machinery, equipment, and supplies"', add
label define ind1950_lbl 376 `"Motor vehicles and motor vehicle equipment"', add
label define ind1950_lbl 377 `"Aircraft and parts"', add
label define ind1950_lbl 378 `"Ship and boat building and repairing"', add
label define ind1950_lbl 379 `"Railroad and miscellaneous transportation equipment"', add
label define ind1950_lbl 386 `"Professional equipment and supplies"', add
label define ind1950_lbl 387 `"Photographic equipment and supplies"', add
label define ind1950_lbl 388 `"Watches, clocks, and clockwork-operated devices"', add
label define ind1950_lbl 399 `"Miscellaneous manufacturing industries"', add
label define ind1950_lbl 406 `"Meat products"', add
label define ind1950_lbl 407 `"Dairy products"', add
label define ind1950_lbl 408 `"Canning and preserving fruits, vegetables, and seafoods"', add
label define ind1950_lbl 409 `"Grain-mill products"', add
label define ind1950_lbl 416 `"Bakery products"', add
label define ind1950_lbl 417 `"Confectionery and related products"', add
label define ind1950_lbl 418 `"Beverage industries"', add
label define ind1950_lbl 419 `"Miscellaneous food preparations and kindred products"', add
label define ind1950_lbl 426 `"Not specified food industries"', add
label define ind1950_lbl 429 `"Tobacco manufactures"', add
label define ind1950_lbl 436 `"Knitting mills"', add
label define ind1950_lbl 437 `"Dyeing and finishing textiles, except knit goods"', add
label define ind1950_lbl 438 `"Carpets, rugs, and other floor coverings"', add
label define ind1950_lbl 439 `"Yarn, thread, and fabric mills"', add
label define ind1950_lbl 446 `"Miscellaneous textile mill products"', add
label define ind1950_lbl 448 `"Apparel and accessories"', add
label define ind1950_lbl 449 `"Miscellaneous fabricated textile products"', add
label define ind1950_lbl 456 `"Pulp, paper, and paperboard mills"', add
label define ind1950_lbl 457 `"Paperboard containers and boxes"', add
label define ind1950_lbl 458 `"Miscellaneous paper and pulp products"', add
label define ind1950_lbl 459 `"Printing, publishing, and allied industries"', add
label define ind1950_lbl 466 `"Synthetic fibers"', add
label define ind1950_lbl 467 `"Drugs and medicines"', add
label define ind1950_lbl 468 `"Paints, varnishes, and related products"', add
label define ind1950_lbl 469 `"Miscellaneous chemicals and allied products"', add
label define ind1950_lbl 476 `"Petroleum refining"', add
label define ind1950_lbl 477 `"Miscellaneous petroleum and coal products"', add
label define ind1950_lbl 478 `"Rubber products"', add
label define ind1950_lbl 487 `"Leather: tanned, curried, and finished"', add
label define ind1950_lbl 488 `"Footwear, except rubber"', add
label define ind1950_lbl 489 `"Leather products, except footwear"', add
label define ind1950_lbl 499 `"Not specified manufacturing industries"', add
label define ind1950_lbl 506 `"Railroads and railway express service"', add
label define ind1950_lbl 516 `"Street railways and bus lines"', add
label define ind1950_lbl 526 `"Trucking service"', add
label define ind1950_lbl 527 `"Warehousing and storage"', add
label define ind1950_lbl 536 `"Taxicab service"', add
label define ind1950_lbl 546 `"Water transportation"', add
label define ind1950_lbl 556 `"Air transportation"', add
label define ind1950_lbl 567 `"Petroleum and gasoline pipe lines"', add
label define ind1950_lbl 568 `"Services incidental to transportation"', add
label define ind1950_lbl 578 `"Telephone"', add
label define ind1950_lbl 579 `"Telegraph"', add
label define ind1950_lbl 586 `"Electric light and power"', add
label define ind1950_lbl 587 `"Gas and steam supply systems"', add
label define ind1950_lbl 588 `"Electric-gas utilities"', add
label define ind1950_lbl 596 `"Water supply"', add
label define ind1950_lbl 597 `"Sanitary services"', add
label define ind1950_lbl 598 `"Other and not specified utilities"', add
label define ind1950_lbl 606 `"Motor vehicles and equipment"', add
label define ind1950_lbl 607 `"Drugs, chemicals, and allied products"', add
label define ind1950_lbl 608 `"Dry goods apparel"', add
label define ind1950_lbl 609 `"Food and related products"', add
label define ind1950_lbl 616 `"Electrical goods, hardware, and plumbing equipment"', add
label define ind1950_lbl 617 `"Machinery, equipment, and supplies"', add
label define ind1950_lbl 618 `"Petroleum products"', add
label define ind1950_lbl 619 `"Farm products--raw materials"', add
label define ind1950_lbl 626 `"Miscellaneous wholesale trade"', add
label define ind1950_lbl 627 `"Not specified wholesale trade"', add
label define ind1950_lbl 636 `"Food stores, except dairy products"', add
label define ind1950_lbl 637 `"Dairy products stores and milk retailing"', add
label define ind1950_lbl 646 `"General merchandise stores"', add
label define ind1950_lbl 647 `"Five and ten cent stores"', add
label define ind1950_lbl 656 `"Apparel and accessories stores, except shoe"', add
label define ind1950_lbl 657 `"Shoe stores"', add
label define ind1950_lbl 658 `"Furniture and house furnishing stores"', add
label define ind1950_lbl 659 `"Household appliance and radio stores"', add
label define ind1950_lbl 667 `"Motor vehicles and accessories retailing"', add
label define ind1950_lbl 668 `"Gasoline service stations"', add
label define ind1950_lbl 669 `"Drug stores"', add
label define ind1950_lbl 679 `"Eating and drinking places"', add
label define ind1950_lbl 686 `"Hardware and farm implement stores"', add
label define ind1950_lbl 687 `"Lumber and building material retailing"', add
label define ind1950_lbl 688 `"Liquor stores"', add
label define ind1950_lbl 689 `"Retail florists"', add
label define ind1950_lbl 696 `"Jewelry stores"', add
label define ind1950_lbl 697 `"Fuel and ice retailing"', add
label define ind1950_lbl 698 `"Miscellaneous retail stores"', add
label define ind1950_lbl 699 `"Not specified retail trade"', add
label define ind1950_lbl 716 `"Banking and credit agencies"', add
label define ind1950_lbl 726 `"Security and commodity brokerage and investment companies"', add
label define ind1950_lbl 736 `"Insurance"', add
label define ind1950_lbl 746 `"Real estate"', add
label define ind1950_lbl 806 `"Advertising"', add
label define ind1950_lbl 807 `"Accounting, auditing, and bookkeeping services"', add
label define ind1950_lbl 808 `"Miscellaneous business services"', add
label define ind1950_lbl 816 `"Auto repair services and garages"', add
label define ind1950_lbl 817 `"Miscellaneous repair services"', add
label define ind1950_lbl 826 `"Private households"', add
label define ind1950_lbl 836 `"Hotels and lodging places"', add
label define ind1950_lbl 846 `"Laundering, cleaning, and dyeing services"', add
label define ind1950_lbl 847 `"Dressmaking shops"', add
label define ind1950_lbl 848 `"Shoe repair shops"', add
label define ind1950_lbl 849 `"Miscellaneous personal services"', add
label define ind1950_lbl 856 `"Radio broadcasting and television"', add
label define ind1950_lbl 857 `"Theaters and motion pictures"', add
label define ind1950_lbl 858 `"Bowling alleys, and billiard and pool parlors"', add
label define ind1950_lbl 859 `"Miscellaneous entertainment and recreation services"', add
label define ind1950_lbl 868 `"Medical and other health services, except hospitals"', add
label define ind1950_lbl 869 `"Hospitals"', add
label define ind1950_lbl 879 `"Legal services"', add
label define ind1950_lbl 888 `"Educational services"', add
label define ind1950_lbl 896 `"Welfare and religious services"', add
label define ind1950_lbl 897 `"Nonprofit membership organizations"', add
label define ind1950_lbl 898 `"Engineering and architectural services"', add
label define ind1950_lbl 899 `"Miscellaneous professional and related services"', add
label define ind1950_lbl 906 `"Postal service"', add
label define ind1950_lbl 916 `"Federal public administration"', add
label define ind1950_lbl 926 `"State public administration"', add
label define ind1950_lbl 936 `"Local public administration"', add
label define ind1950_lbl 997 `"Nonclassifiable"', add
label define ind1950_lbl 998 `"Industry not reported"', add
label values ind1950 ind1950_lbl

label define classwkr_lbl 00 `"NIU"'
label define classwkr_lbl 10 `"Self-employed"', add
label define classwkr_lbl 13 `"Self-employed, not incorporated"', add
label define classwkr_lbl 14 `"Self-employed, incorporated"', add
label define classwkr_lbl 20 `"Works for wages or salary"', add
label define classwkr_lbl 21 `"Wage/salary, private"', add
label define classwkr_lbl 22 `"Private, for profit"', add
label define classwkr_lbl 23 `"Private, nonprofit"', add
label define classwkr_lbl 24 `"Wage/salary, government"', add
label define classwkr_lbl 25 `"Federal government employee"', add
label define classwkr_lbl 26 `"Armed forces"', add
label define classwkr_lbl 27 `"State government employee"', add
label define classwkr_lbl 28 `"Local government employee"', add
label define classwkr_lbl 29 `"Unpaid family worker"', add
label define classwkr_lbl 99 `"Missing/Unknown"', add
label values classwkr classwkr_lbl

label define occ50ly_lbl 000 `"Accountants and auditors"'
label define occ50ly_lbl 001 `"Actors and actresses"', add
label define occ50ly_lbl 002 `"Airplane pilots and navigators"', add
label define occ50ly_lbl 003 `"Architects"', add
label define occ50ly_lbl 004 `"Artists and art teachers"', add
label define occ50ly_lbl 005 `"Athletes"', add
label define occ50ly_lbl 006 `"Authors"', add
label define occ50ly_lbl 007 `"Chemists"', add
label define occ50ly_lbl 008 `"Chiropractors"', add
label define occ50ly_lbl 009 `"Clergymen"', add
label define occ50ly_lbl 010 `"College presidents and deans"', add
label define occ50ly_lbl 012 `"Agricultural sciences"', add
label define occ50ly_lbl 013 `"Biological sciences"', add
label define occ50ly_lbl 014 `"Chemistry"', add
label define occ50ly_lbl 015 `"Economics"', add
label define occ50ly_lbl 016 `"Engineering"', add
label define occ50ly_lbl 017 `"Geology and geophysics"', add
label define occ50ly_lbl 018 `"Mathematics"', add
label define occ50ly_lbl 019 `"Medical sciences"', add
label define occ50ly_lbl 023 `"Physics"', add
label define occ50ly_lbl 024 `"Psychology"', add
label define occ50ly_lbl 025 `"Statistics"', add
label define occ50ly_lbl 026 `"Natural science (n.e.c.)"', add
label define occ50ly_lbl 027 `"Social sciences (n.e.c.)"', add
label define occ50ly_lbl 028 `"Nonscientific subjects"', add
label define occ50ly_lbl 029 `"Subject not specified"', add
label define occ50ly_lbl 031 `"Dancers and dancing teachers"', add
label define occ50ly_lbl 032 `"Dentists"', add
label define occ50ly_lbl 033 `"Designers"', add
label define occ50ly_lbl 034 `"Dieticians and nutritionists"', add
label define occ50ly_lbl 035 `"Draftsmen"', add
label define occ50ly_lbl 036 `"Editors and reporters"', add
label define occ50ly_lbl 041 `"Engineers, aeronautical"', add
label define occ50ly_lbl 042 `"Engineers, chemical"', add
label define occ50ly_lbl 043 `"Engineers, civil"', add
label define occ50ly_lbl 044 `"Engineers, electrical"', add
label define occ50ly_lbl 045 `"Engineers, industrial"', add
label define occ50ly_lbl 046 `"Engineers, mechanical"', add
label define occ50ly_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define occ50ly_lbl 048 `"Engineers, mining"', add
label define occ50ly_lbl 049 `"Engineers (n.e.c.)"', add
label define occ50ly_lbl 051 `"Entertainers (n.e.c.)"', add
label define occ50ly_lbl 052 `"Farm and home management advisors"', add
label define occ50ly_lbl 053 `"Foresters and conservationists"', add
label define occ50ly_lbl 054 `"Funeral directors and embalmers"', add
label define occ50ly_lbl 055 `"Lawyers and judges"', add
label define occ50ly_lbl 056 `"Librarians"', add
label define occ50ly_lbl 057 `"Musicians and music teachers"', add
label define occ50ly_lbl 058 `"Nurses, professional"', add
label define occ50ly_lbl 059 `"Nurses, student professional"', add
label define occ50ly_lbl 061 `"Agricultural scientists"', add
label define occ50ly_lbl 062 `"Biological scientists"', add
label define occ50ly_lbl 063 `"Geologists and geophysicists"', add
label define occ50ly_lbl 067 `"Mathematicians"', add
label define occ50ly_lbl 068 `"Physicists"', add
label define occ50ly_lbl 069 `"Miscellaneous natural scientists"', add
label define occ50ly_lbl 070 `"Optometrists"', add
label define occ50ly_lbl 071 `"Osteopaths"', add
label define occ50ly_lbl 072 `"Personnel and labor relations workers"', add
label define occ50ly_lbl 073 `"Pharmacists"', add
label define occ50ly_lbl 074 `"Photographers"', add
label define occ50ly_lbl 075 `"Physicians and surgeons"', add
label define occ50ly_lbl 076 `"Radio operators"', add
label define occ50ly_lbl 077 `"Recreation and group workers"', add
label define occ50ly_lbl 078 `"Religious workers"', add
label define occ50ly_lbl 079 `"Social and welfare workers, except group"', add
label define occ50ly_lbl 081 `"Economists"', add
label define occ50ly_lbl 082 `"Psychologists"', add
label define occ50ly_lbl 083 `"Statisticians and actuaries"', add
label define occ50ly_lbl 084 `"Miscellaneous social scientists"', add
label define occ50ly_lbl 091 `"Sports instructors and officials"', add
label define occ50ly_lbl 092 `"Surveyors"', add
label define occ50ly_lbl 093 `"Teachers (n.e.c.)"', add
label define occ50ly_lbl 094 `"Technicians, medical and dental"', add
label define occ50ly_lbl 095 `"Technicians, testing"', add
label define occ50ly_lbl 096 `"Technicians (n.e.c.)"', add
label define occ50ly_lbl 097 `"Therapists and healers (n.e.c.)"', add
label define occ50ly_lbl 098 `"Veterinarians"', add
label define occ50ly_lbl 099 `"Professional, technical and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 100 `"Farmers (owners and tenants)"', add
label define occ50ly_lbl 123 `"Farm managers"', add
label define occ50ly_lbl 200 `"Buyers and department heads, store"', add
label define occ50ly_lbl 201 `"Buyers and shippers, farm products"', add
label define occ50ly_lbl 203 `"Conductors, railroad"', add
label define occ50ly_lbl 204 `"Credit men"', add
label define occ50ly_lbl 205 `"Floormen and floor managers, store"', add
label define occ50ly_lbl 210 `"Inspectors, public administration"', add
label define occ50ly_lbl 230 `"Managers and superintendents, building"', add
label define occ50ly_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ50ly_lbl 250 `"Officials and administrators (n.e.c.), public administration"', add
label define occ50ly_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ50ly_lbl 270 `"Postmasters"', add
label define occ50ly_lbl 280 `"Purchasing agents and buyers (n.e.c.)"', add
label define occ50ly_lbl 290 `"Managers, officials, and proprietors (n.e.c.)"', add
label define occ50ly_lbl 300 `"Agents (n.e.c.)"', add
label define occ50ly_lbl 301 `"Attendants and assistants, library"', add
label define occ50ly_lbl 302 `"Attendants, physicians and dentists office"', add
label define occ50ly_lbl 304 `"Baggagemen, transportation"', add
label define occ50ly_lbl 305 `"Bank tellers"', add
label define occ50ly_lbl 310 `"Bookkeepers"', add
label define occ50ly_lbl 320 `"Cashiers"', add
label define occ50ly_lbl 321 `"Collectors, bill and account"', add
label define occ50ly_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ50ly_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ50ly_lbl 335 `"Mail carriers"', add
label define occ50ly_lbl 340 `"Messengers and office boys"', add
label define occ50ly_lbl 341 `"Office machine operators"', add
label define occ50ly_lbl 342 `"Shipping and receiving clerks"', add
label define occ50ly_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ50ly_lbl 360 `"Telegraph messengers"', add
label define occ50ly_lbl 365 `"Telegraph operators"', add
label define occ50ly_lbl 370 `"Telephone operators"', add
label define occ50ly_lbl 380 `"Ticket, station, and express agents"', add
label define occ50ly_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 400 `"Advertising agents and salesmen"', add
label define occ50ly_lbl 410 `"Auctioneers"', add
label define occ50ly_lbl 420 `"Demonstrators"', add
label define occ50ly_lbl 430 `"Hucksters and peddlers"', add
label define occ50ly_lbl 450 `"Insurance agents and brokers"', add
label define occ50ly_lbl 460 `"Newsboys"', add
label define occ50ly_lbl 470 `"Real estate agents and brokers"', add
label define occ50ly_lbl 480 `"Stock and bond salesmen"', add
label define occ50ly_lbl 490 `"Salesmen and sales clerks (n.e.c.)"', add
label define occ50ly_lbl 500 `"Bakers"', add
label define occ50ly_lbl 501 `"Blacksmiths"', add
label define occ50ly_lbl 502 `"Bookbinders"', add
label define occ50ly_lbl 503 `"Boilermakers"', add
label define occ50ly_lbl 504 `"Brickmasons, stonemasons, and tile setters"', add
label define occ50ly_lbl 505 `"Cabinetmakers"', add
label define occ50ly_lbl 510 `"Carpenters"', add
label define occ50ly_lbl 511 `"Cement and concrete finishers"', add
label define occ50ly_lbl 512 `"Compositors and typesetters"', add
label define occ50ly_lbl 513 `"Cranemen, derrickmen, and hoistmen"', add
label define occ50ly_lbl 514 `"Decorators and window dressers"', add
label define occ50ly_lbl 515 `"Electricians"', add
label define occ50ly_lbl 520 `"Electrotypers and stereotypers"', add
label define occ50ly_lbl 521 `"Engravers, except photoengravers"', add
label define occ50ly_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ50ly_lbl 523 `"Foremen (n.e.c.)"', add
label define occ50ly_lbl 524 `"Forgemen and hammermen"', add
label define occ50ly_lbl 525 `"Furriers"', add
label define occ50ly_lbl 530 `"Glaziers"', add
label define occ50ly_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ50ly_lbl 532 `"Inspectors, scalers, and graders, log and lumber"', add
label define occ50ly_lbl 533 `"Inspectors (n.e.c.)"', add
label define occ50ly_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ50ly_lbl 535 `"Job setters, metal"', add
label define occ50ly_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ50ly_lbl 541 `"Locomotive engineers"', add
label define occ50ly_lbl 542 `"Locomotive firemen"', add
label define occ50ly_lbl 543 `"Loom fixers"', add
label define occ50ly_lbl 544 `"Machinists"', add
label define occ50ly_lbl 545 `"Mechanics and repairmen, airplane"', add
label define occ50ly_lbl 550 `"Mechanics and repairmen, automobile"', add
label define occ50ly_lbl 551 `"Mechanics and repairmen, office machine"', add
label define occ50ly_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define occ50ly_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define occ50ly_lbl 554 `"Mechanics and repairmen (n.e.c.)"', add
label define occ50ly_lbl 555 `"Millers, grain, flour, feed, etc."', add
label define occ50ly_lbl 560 `"Millwrights"', add
label define occ50ly_lbl 561 `"Molders, metal"', add
label define occ50ly_lbl 562 `"Motion picture projectionists"', add
label define occ50ly_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ50ly_lbl 564 `"Painters, construction and maintenance"', add
label define occ50ly_lbl 565 `"Paperhangers"', add
label define occ50ly_lbl 570 `"Pattern and model makers, except paper"', add
label define occ50ly_lbl 571 `"Photoengravers and lithographers"', add
label define occ50ly_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ50ly_lbl 573 `"Plasterers"', add
label define occ50ly_lbl 574 `"Plumbers and pipe fitters"', add
label define occ50ly_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ50ly_lbl 580 `"Rollers and roll hands, metal"', add
label define occ50ly_lbl 581 `"Roofers and slaters"', add
label define occ50ly_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ50ly_lbl 583 `"Stationary engineers"', add
label define occ50ly_lbl 584 `"Stone cutters and stone carvers"', add
label define occ50ly_lbl 585 `"Structural metal workers"', add
label define occ50ly_lbl 590 `"Tailors and tailoresses"', add
label define occ50ly_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ50ly_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ50ly_lbl 593 `"Upholsterers"', add
label define occ50ly_lbl 594 `"Craftsmen and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 595 `"Members of the armed services"', add
label define occ50ly_lbl 600 `"Apprentice auto mechanics"', add
label define occ50ly_lbl 601 `"Apprentice bricklayers and masons"', add
label define occ50ly_lbl 602 `"Apprentice carpenters"', add
label define occ50ly_lbl 603 `"Apprentice electricians"', add
label define occ50ly_lbl 604 `"Apprentice machinists and toolmakers"', add
label define occ50ly_lbl 605 `"Apprentice mechanics, except auto"', add
label define occ50ly_lbl 610 `"Apprentice plumbers and pipe fitters"', add
label define occ50ly_lbl 611 `"Apprentices, building trades (n.e.c.)"', add
label define occ50ly_lbl 612 `"Apprentices, metalworking trades (n.e.c.)"', add
label define occ50ly_lbl 613 `"Apprentices, printing trades"', add
label define occ50ly_lbl 614 `"Apprentices, other specified trades"', add
label define occ50ly_lbl 615 `"Apprentices, trade not specified"', add
label define occ50ly_lbl 620 `"Asbestos and insulation workers"', add
label define occ50ly_lbl 621 `"Attendants, auto service and parking"', add
label define occ50ly_lbl 622 `"Blasters and powdermen"', add
label define occ50ly_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ50ly_lbl 624 `"Brakemen, railroad"', add
label define occ50ly_lbl 625 `"Bus drivers"', add
label define occ50ly_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ50ly_lbl 631 `"Conductors, bus and street railway"', add
label define occ50ly_lbl 632 `"Deliverymen and routemen"', add
label define occ50ly_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define occ50ly_lbl 634 `"Dyers"', add
label define occ50ly_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ50ly_lbl 640 `"Fruit, nut, veg graders and packers, except factory"', add
label define occ50ly_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ50ly_lbl 642 `"Heaters, metal"', add
label define occ50ly_lbl 643 `"Laundry and dry cleaning operatives"', add
label define occ50ly_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ50ly_lbl 645 `"Milliners"', add
label define occ50ly_lbl 650 `"Mine operatives and laborers"', add
label define occ50ly_lbl 660 `"Motormen, mine, factory, logging camp, etc."', add
label define occ50ly_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ50ly_lbl 662 `"Oilers and greaser, except auto"', add
label define occ50ly_lbl 670 `"Painters, except construction or maintenance"', add
label define occ50ly_lbl 671 `"Photographic process workers"', add
label define occ50ly_lbl 672 `"Power station operators"', add
label define occ50ly_lbl 673 `"Sailors and deck hands"', add
label define occ50ly_lbl 674 `"Sawyers"', add
label define occ50ly_lbl 675 `"Spinners, textile"', add
label define occ50ly_lbl 680 `"Stationary firemen"', add
label define occ50ly_lbl 681 `"Switchmen, railroad"', add
label define occ50ly_lbl 682 `"Taxicab drivers and chauffers"', add
label define occ50ly_lbl 683 `"Truck and tractor drivers"', add
label define occ50ly_lbl 684 `"Weavers, textile"', add
label define occ50ly_lbl 685 `"Welders and flame cutters"', add
label define occ50ly_lbl 690 `"Operative and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 700 `"Housekeepers, private household"', add
label define occ50ly_lbl 710 `"Laundressses, private household"', add
label define occ50ly_lbl 720 `"Private household workers (n.e.c.)"', add
label define occ50ly_lbl 730 `"Attendants, hospital and other institution"', add
label define occ50ly_lbl 731 `"Attendants, professional and personal service (n.e.c.)"', add
label define occ50ly_lbl 732 `"Attendants, recreation and amusement"', add
label define occ50ly_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ50ly_lbl 750 `"Bartenders"', add
label define occ50ly_lbl 751 `"Bootblacks"', add
label define occ50ly_lbl 752 `"Boarding and lodging house keepers"', add
label define occ50ly_lbl 753 `"Charwomen and cleaners"', add
label define occ50ly_lbl 754 `"Cooks, except private household"', add
label define occ50ly_lbl 760 `"Counter and fountain workers"', add
label define occ50ly_lbl 761 `"Elevator operators"', add
label define occ50ly_lbl 762 `"Firemen, fire protection"', add
label define occ50ly_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ50ly_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ50ly_lbl 770 `"Janitors and sextons"', add
label define occ50ly_lbl 771 `"Marshals and constables"', add
label define occ50ly_lbl 772 `"Midwives"', add
label define occ50ly_lbl 773 `"Policemen and detectives"', add
label define occ50ly_lbl 780 `"Porters"', add
label define occ50ly_lbl 781 `"Practical nurses"', add
label define occ50ly_lbl 782 `"Sheriffs and bailiffs"', add
label define occ50ly_lbl 783 `"Ushers, recreation and amusement"', add
label define occ50ly_lbl 784 `"Waiters and waitresses"', add
label define occ50ly_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ50ly_lbl 790 `"Service workers, except private household (n.e.c.)"', add
label define occ50ly_lbl 810 `"Farm foremen"', add
label define occ50ly_lbl 820 `"Farm laborers, wage workers"', add
label define occ50ly_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ50ly_lbl 840 `"Farm service laborers, self-employed"', add
label define occ50ly_lbl 910 `"Fishermen and oystermen"', add
label define occ50ly_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ50ly_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define occ50ly_lbl 940 `"Longshoremen and stevedores"', add
label define occ50ly_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ50ly_lbl 960 `"Teamsters"', add
label define occ50ly_lbl 970 `"Laborers (n.e.c.)"', add
label define occ50ly_lbl 997 `"Unknown"', add
label define occ50ly_lbl 999 `"Unemployed- last worked over x years ago"', add
label values occ50ly occ50ly_lbl

label define ind50ly_lbl 000 `"NIU"'
label define ind50ly_lbl 105 `"Agriculture"', add
label define ind50ly_lbl 116 `"Forestry"', add
label define ind50ly_lbl 126 `"Fisheries"', add
label define ind50ly_lbl 206 `"Metal mining"', add
label define ind50ly_lbl 216 `"Coal mining"', add
label define ind50ly_lbl 226 `"Crude petroleum and natural gas extraction"', add
label define ind50ly_lbl 236 `"Nonmetallic mining and quarrying, except fuel"', add
label define ind50ly_lbl 239 `"Mining not specified"', add
label define ind50ly_lbl 246 `"Construction"', add
label define ind50ly_lbl 306 `"Logging"', add
label define ind50ly_lbl 307 `"Sawmills, planing mills, and millwork"', add
label define ind50ly_lbl 308 `"Misc wood products"', add
label define ind50ly_lbl 309 `"Furniture and fixtures"', add
label define ind50ly_lbl 316 `"Glass and glass products"', add
label define ind50ly_lbl 317 `"Cement, concrete, gypsum and plaster products"', add
label define ind50ly_lbl 318 `"Structural clay products"', add
label define ind50ly_lbl 319 `"Pottery and related products"', add
label define ind50ly_lbl 326 `"Miscellaneous nonmetallic mineral and stone products"', add
label define ind50ly_lbl 336 `"Blast furnaces, steel works, and rolling mills"', add
label define ind50ly_lbl 337 `"Other primary iron and steel industries"', add
label define ind50ly_lbl 338 `"Primary nonferrous industries"', add
label define ind50ly_lbl 346 `"Fabricated steel products"', add
label define ind50ly_lbl 347 `"Fabricated nonferrous metal products"', add
label define ind50ly_lbl 348 `"Not specified metal industries"', add
label define ind50ly_lbl 356 `"Agricultural machinery and tractors"', add
label define ind50ly_lbl 357 `"Office and store machines and devices"', add
label define ind50ly_lbl 358 `"Miscellaneous machinery"', add
label define ind50ly_lbl 367 `"Electrical machinery, equipment, and supplies"', add
label define ind50ly_lbl 376 `"Motor vehicles and motor vehicle equipment"', add
label define ind50ly_lbl 377 `"Aircraft and parts"', add
label define ind50ly_lbl 378 `"Ship and boat building and repairing"', add
label define ind50ly_lbl 379 `"Railroad and miscellaneous transportation equipment"', add
label define ind50ly_lbl 386 `"Professional equipment and supplies"', add
label define ind50ly_lbl 387 `"Photographic equipment and supplies"', add
label define ind50ly_lbl 388 `"Watches, clocks, and clockwork-operated devices"', add
label define ind50ly_lbl 399 `"Miscellaneous manufacturing industries"', add
label define ind50ly_lbl 406 `"Meat products"', add
label define ind50ly_lbl 407 `"Dairy products"', add
label define ind50ly_lbl 408 `"Canning and preserving fruits, vegetables, and seafoods"', add
label define ind50ly_lbl 409 `"Grain-mill products"', add
label define ind50ly_lbl 416 `"Bakery products"', add
label define ind50ly_lbl 417 `"Confectionery and related products"', add
label define ind50ly_lbl 418 `"Beverage industries"', add
label define ind50ly_lbl 419 `"Miscellaneous food preparations and kindred products"', add
label define ind50ly_lbl 426 `"Not specified food industries"', add
label define ind50ly_lbl 429 `"Tobacco manufactures"', add
label define ind50ly_lbl 436 `"Knitting mills"', add
label define ind50ly_lbl 437 `"Dyeing and finishing textiles, except knit goods"', add
label define ind50ly_lbl 438 `"Carpets, rugs, and other floor coverings"', add
label define ind50ly_lbl 439 `"Yarn, thread, and fabric mills"', add
label define ind50ly_lbl 446 `"Miscellaneous textile mill products"', add
label define ind50ly_lbl 448 `"Apparel and accessories"', add
label define ind50ly_lbl 449 `"Miscellaneous fabricated textile products"', add
label define ind50ly_lbl 456 `"Pulp, paper, and paperboard mills"', add
label define ind50ly_lbl 457 `"Paperboard containers and boxes"', add
label define ind50ly_lbl 458 `"Miscellaneous paper and pulp products"', add
label define ind50ly_lbl 459 `"Printing, publishing, and allied industries"', add
label define ind50ly_lbl 466 `"Synthetic fibers"', add
label define ind50ly_lbl 467 `"Drugs and medicines"', add
label define ind50ly_lbl 468 `"Paints, varnishes, and related products"', add
label define ind50ly_lbl 469 `"Miscellaneous chemicals and allied products"', add
label define ind50ly_lbl 476 `"Petroleum refining"', add
label define ind50ly_lbl 477 `"Miscellaneous petroleum and coal products"', add
label define ind50ly_lbl 478 `"Rubber products"', add
label define ind50ly_lbl 487 `"Leather: tanned, curried, and finished"', add
label define ind50ly_lbl 488 `"Footwear, except rubber"', add
label define ind50ly_lbl 489 `"Leather products, except footwear"', add
label define ind50ly_lbl 499 `"Not specified manufacturing industries"', add
label define ind50ly_lbl 506 `"Railroads and railway express service"', add
label define ind50ly_lbl 516 `"Street railways and bus lines"', add
label define ind50ly_lbl 526 `"Trucking service"', add
label define ind50ly_lbl 527 `"Warehousing and storage"', add
label define ind50ly_lbl 536 `"Taxicab service"', add
label define ind50ly_lbl 546 `"Water transportation"', add
label define ind50ly_lbl 556 `"Air transportation"', add
label define ind50ly_lbl 567 `"Petroleum and gasoline pipe lines"', add
label define ind50ly_lbl 568 `"Services incidental to transportation"', add
label define ind50ly_lbl 578 `"Telephone"', add
label define ind50ly_lbl 579 `"Telegraph"', add
label define ind50ly_lbl 586 `"Electric light and power"', add
label define ind50ly_lbl 587 `"Gas and steam supply systems"', add
label define ind50ly_lbl 588 `"Electric-gas utilities"', add
label define ind50ly_lbl 596 `"Water supply"', add
label define ind50ly_lbl 597 `"Sanitary services"', add
label define ind50ly_lbl 598 `"Other and not specified utilities"', add
label define ind50ly_lbl 606 `"Motor vehicles and equipment"', add
label define ind50ly_lbl 607 `"Drugs, chemicals, and allied products"', add
label define ind50ly_lbl 608 `"Dry goods apparel"', add
label define ind50ly_lbl 609 `"Food and related products"', add
label define ind50ly_lbl 616 `"Electrical goods, hardware, and plumbing equipment"', add
label define ind50ly_lbl 617 `"Machinery, equipment, and supplies"', add
label define ind50ly_lbl 618 `"Petroleum products"', add
label define ind50ly_lbl 619 `"Farm products--raw materials"', add
label define ind50ly_lbl 626 `"Miscellaneous wholesale trade"', add
label define ind50ly_lbl 627 `"Not specified wholesale trade"', add
label define ind50ly_lbl 636 `"Food stores, except dairy products"', add
label define ind50ly_lbl 637 `"Dairy products stores and milk retailing"', add
label define ind50ly_lbl 646 `"General merchandise stores"', add
label define ind50ly_lbl 647 `"Five and ten cent stores"', add
label define ind50ly_lbl 656 `"Apparel and accessories stores, except shoe"', add
label define ind50ly_lbl 657 `"Shoe stores"', add
label define ind50ly_lbl 658 `"Furniture and house furnishing stores"', add
label define ind50ly_lbl 659 `"Household appliance and radio stores"', add
label define ind50ly_lbl 667 `"Motor vehicles and accessories retailing"', add
label define ind50ly_lbl 668 `"Gasoline service stations"', add
label define ind50ly_lbl 669 `"Drug stores"', add
label define ind50ly_lbl 679 `"Eating and drinking places"', add
label define ind50ly_lbl 686 `"Hardware and farm implement stores"', add
label define ind50ly_lbl 687 `"Lumber and building material retailing"', add
label define ind50ly_lbl 688 `"Liquor stores"', add
label define ind50ly_lbl 689 `"Retail florists"', add
label define ind50ly_lbl 696 `"Jewelry stores"', add
label define ind50ly_lbl 697 `"Fuel and ice retailing"', add
label define ind50ly_lbl 698 `"Miscellaneous retail stores"', add
label define ind50ly_lbl 699 `"Not specified retail trade"', add
label define ind50ly_lbl 716 `"Banking and credit agencies"', add
label define ind50ly_lbl 726 `"Security and commodity brokerage and investment companies"', add
label define ind50ly_lbl 736 `"Insurance"', add
label define ind50ly_lbl 746 `"Real estate"', add
label define ind50ly_lbl 806 `"Advertising"', add
label define ind50ly_lbl 807 `"Accounting, auditing, and bookkeeping services"', add
label define ind50ly_lbl 808 `"Miscellaneous business services"', add
label define ind50ly_lbl 816 `"Auto repair services and garages"', add
label define ind50ly_lbl 817 `"Miscellaneous repair services"', add
label define ind50ly_lbl 826 `"Private households"', add
label define ind50ly_lbl 836 `"Hotels and lodging places"', add
label define ind50ly_lbl 846 `"Laundering, cleaning, and dyeing services"', add
label define ind50ly_lbl 847 `"Dressmaking shops"', add
label define ind50ly_lbl 848 `"Shoe repair shops"', add
label define ind50ly_lbl 849 `"Miscellaneous personal services"', add
label define ind50ly_lbl 856 `"Radio broadcasting and television"', add
label define ind50ly_lbl 857 `"Theaters and motion pictures"', add
label define ind50ly_lbl 858 `"Bowling alleys, and billiard and pool parlors"', add
label define ind50ly_lbl 859 `"Miscellaneous entertainment and recreation services"', add
label define ind50ly_lbl 868 `"Medical and other health services, except hospitals"', add
label define ind50ly_lbl 869 `"Hospitals"', add
label define ind50ly_lbl 879 `"Legal services"', add
label define ind50ly_lbl 888 `"Educational services"', add
label define ind50ly_lbl 896 `"Welfare and religious services"', add
label define ind50ly_lbl 897 `"Nonprofit membership organizations"', add
label define ind50ly_lbl 898 `"Engineering and architectural services"', add
label define ind50ly_lbl 899 `"Miscellaneous professional and related services"', add
label define ind50ly_lbl 906 `"Postal service"', add
label define ind50ly_lbl 916 `"Federal public administration"', add
label define ind50ly_lbl 926 `"State public administration"', add
label define ind50ly_lbl 936 `"Local public administration"', add
label define ind50ly_lbl 997 `"Nonclassifiable"', add
label define ind50ly_lbl 998 `"Industry not reported"', add
label values ind50ly ind50ly_lbl

label define classwly_lbl 00 `"NIU"'
label define classwly_lbl 10 `"Self-employed"', add
label define classwly_lbl 13 `"Self-employed, not incorporated"', add
label define classwly_lbl 14 `"Self-employed, incorporated"', add
label define classwly_lbl 20 `"Works for wages or salary"', add
label define classwly_lbl 22 `"Wage/salary, private"', add
label define classwly_lbl 24 `"Wage/salary, government"', add
label define classwly_lbl 25 `"Federal government employee"', add
label define classwly_lbl 27 `"State government employee"', add
label define classwly_lbl 28 `"Local government employee"', add
label define classwly_lbl 29 `"Unpaid family worker"', add
label define classwly_lbl 99 `"Missing/Unknown"', add
label values classwly classwly_lbl

label define wkswork2_lbl 0 `"NIU"'
label define wkswork2_lbl 1 `"1-13 weeks"', add
label define wkswork2_lbl 2 `"14-26 weeks"', add
label define wkswork2_lbl 3 `"27-39 weeks"', add
label define wkswork2_lbl 4 `"40-47 weeks"', add
label define wkswork2_lbl 5 `"48-49 weeks"', add
label define wkswork2_lbl 6 `"50-52 weeks"', add
label define wkswork2_lbl 9 `"Missing data"', add
label values wkswork2 wkswork2_lbl

label define wksunem2_lbl 0 `"None"'
label define wksunem2_lbl 1 `"1-4 weeks"', add
label define wksunem2_lbl 2 `"5-10 weeks"', add
label define wksunem2_lbl 3 `"11-14 weeks"', add
label define wksunem2_lbl 4 `"15-26 weeks"', add
label define wksunem2_lbl 5 `"27-39 weeks"', add
label define wksunem2_lbl 6 `"40+ weeks"', add
label define wksunem2_lbl 7 `"Over 26 weeks (1962-1967)"', add
label define wksunem2_lbl 8 `"Missing/Unknown"', add
label define wksunem2_lbl 9 `"NIU"', add
label values wksunem2 wksunem2_lbl

label define absent_lbl 0 `"NIU"'
label define absent_lbl 1 `"No"', add
label define absent_lbl 2 `"Yes, laid off"', add
label define absent_lbl 3 `"Yes, other reason (vacation, illness, labor dispute)"', add
label values absent absent_lbl

label define looking_lbl 0 `"NIU"'
label define looking_lbl 1 `"No"', add
label define looking_lbl 2 `"Yes"', add
label values looking looking_lbl

label define durunem2_lbl 00 `"0"'
label define durunem2_lbl 01 `"1"', add
label define durunem2_lbl 02 `"2"', add
label define durunem2_lbl 03 `"3"', add
label define durunem2_lbl 04 `"4"', add
label define durunem2_lbl 05 `"5"', add
label define durunem2_lbl 06 `"6"', add
label define durunem2_lbl 07 `"7-10"', add
label define durunem2_lbl 08 `"11-14"', add
label define durunem2_lbl 09 `"15-18"', add
label define durunem2_lbl 10 `"19-22"', add
label define durunem2_lbl 11 `"23-26"', add
label define durunem2_lbl 12 `"27-34"', add
label define durunem2_lbl 13 `"35-42"', add
label define durunem2_lbl 14 `"43-50"', add
label define durunem2_lbl 15 `"51-52"', add
label define durunem2_lbl 16 `"Over 52 weeks"', add
label define durunem2_lbl 99 `"NIU"', add
label values durunem2 durunem2_lbl

label define fullpart_lbl 0 `"NIU"'
label define fullpart_lbl 1 `"Full-time"', add
label define fullpart_lbl 2 `"Part-time"', add
label define fullpart_lbl 9 `"Unknown"', add
label values fullpart fullpart_lbl

label define nwlookwk_lbl 00 `"Did not look for work/wasn't on layoff"'
label define nwlookwk_lbl 01 `"1 week"', add
label define nwlookwk_lbl 02 `"2 weeks"', add
label define nwlookwk_lbl 03 `"3 weeks"', add
label define nwlookwk_lbl 04 `"4 weeks"', add
label define nwlookwk_lbl 05 `"5 weeks"', add
label define nwlookwk_lbl 06 `"6 weeks"', add
label define nwlookwk_lbl 07 `"7 weeks"', add
label define nwlookwk_lbl 08 `"8 weeks"', add
label define nwlookwk_lbl 09 `"9 weeks"', add
label define nwlookwk_lbl 10 `"10 weeks"', add
label define nwlookwk_lbl 11 `"11 weeks"', add
label define nwlookwk_lbl 12 `"12 weeks"', add
label define nwlookwk_lbl 13 `"13 weeks"', add
label define nwlookwk_lbl 14 `"14 weeks"', add
label define nwlookwk_lbl 15 `"15 weeks"', add
label define nwlookwk_lbl 16 `"16 weeks"', add
label define nwlookwk_lbl 17 `"17 weeks"', add
label define nwlookwk_lbl 18 `"18 weeks"', add
label define nwlookwk_lbl 19 `"19 weeks"', add
label define nwlookwk_lbl 20 `"20 weeks"', add
label define nwlookwk_lbl 21 `"21 weeks"', add
label define nwlookwk_lbl 22 `"22 weeks"', add
label define nwlookwk_lbl 23 `"23 weeks"', add
label define nwlookwk_lbl 24 `"24 weeks"', add
label define nwlookwk_lbl 25 `"25 weeks"', add
label define nwlookwk_lbl 26 `"26 weeks"', add
label define nwlookwk_lbl 27 `"27 weeks"', add
label define nwlookwk_lbl 28 `"28 weeks"', add
label define nwlookwk_lbl 29 `"29 weeks"', add
label define nwlookwk_lbl 30 `"30 weeks"', add
label define nwlookwk_lbl 31 `"31 weeks"', add
label define nwlookwk_lbl 32 `"32 weeks"', add
label define nwlookwk_lbl 33 `"33 weeks"', add
label define nwlookwk_lbl 34 `"34 weeks"', add
label define nwlookwk_lbl 35 `"35 weeks"', add
label define nwlookwk_lbl 36 `"36 weeks"', add
label define nwlookwk_lbl 37 `"37 weeks"', add
label define nwlookwk_lbl 38 `"38 weeks"', add
label define nwlookwk_lbl 39 `"39 weeks"', add
label define nwlookwk_lbl 40 `"40 weeks"', add
label define nwlookwk_lbl 41 `"41 weeks"', add
label define nwlookwk_lbl 42 `"42 weeks"', add
label define nwlookwk_lbl 43 `"43 weeks"', add
label define nwlookwk_lbl 44 `"44 weeks"', add
label define nwlookwk_lbl 45 `"45 weeks"', add
label define nwlookwk_lbl 46 `"46 weeks"', add
label define nwlookwk_lbl 47 `"47 weeks"', add
label define nwlookwk_lbl 48 `"48 weeks"', add
label define nwlookwk_lbl 49 `"49 weeks"', add
label define nwlookwk_lbl 50 `"50 weeks"', add
label define nwlookwk_lbl 51 `"51 weeks"', add
label define nwlookwk_lbl 52 `"52 weeks"', add
label define nwlookwk_lbl 99 `"NIU"', add
label values nwlookwk nwlookwk_lbl

label define paidhour_lbl 0 `"NIU"'
label define paidhour_lbl 1 `"No"', add
label define paidhour_lbl 2 `"Yes"', add
label define paidhour_lbl 6 `"Refused"', add
label define paidhour_lbl 7 `"Don't Know"', add
label values paidhour paidhour_lbl

label define pension_lbl 0 `"NIU"'
label define pension_lbl 1 `"No pension plan at work"', add
label define pension_lbl 2 `"Pension plan at work, but not included"', add
label define pension_lbl 3 `"Included in pension plan at work"', add
label values pension pension_lbl

label define whyunemp_lbl 0 `"NIU"'
label define whyunemp_lbl 1 `"Job loser - on layoff"', add
label define whyunemp_lbl 2 `"Other job loser"', add
label define whyunemp_lbl 3 `"Temporary job ended"', add
label define whyunemp_lbl 4 `"Job leaver"', add
label define whyunemp_lbl 5 `"Re-entrant"', add
label define whyunemp_lbl 6 `"New entrant"', add
label values whyunemp whyunemp_lbl

label define firmsize_lbl 0 `"NIU"'
label define firmsize_lbl 1 `"Under 10"', add
label define firmsize_lbl 2 `"10 to 24"', add
label define firmsize_lbl 3 `"Under 25"', add
label define firmsize_lbl 4 `"10 to 49"', add
label define firmsize_lbl 5 `"25 to 99"', add
label define firmsize_lbl 6 `"50 to 99"', add
label define firmsize_lbl 7 `"100 to 499"', add
label define firmsize_lbl 8 `"500 to 999"', add
label define firmsize_lbl 9 `"1000+"', add
label values firmsize firmsize_lbl

label define whyabsnt_lbl 00 `"NIU"'
label define whyabsnt_lbl 01 `"On temporary layoff (under 30 days)"', add
label define whyabsnt_lbl 02 `"On indefinite layoff (30+ days)"', add
label define whyabsnt_lbl 03 `"Slack work/business conditions"', add
label define whyabsnt_lbl 04 `"Waiting for a new job to begin"', add
label define whyabsnt_lbl 05 `"Vacation/personal days"', add
label define whyabsnt_lbl 06 `"Own illness/injury/medical problems"', add
label define whyabsnt_lbl 07 `"Child care problems"', add
label define whyabsnt_lbl 08 `"Other family/personal obligation"', add
label define whyabsnt_lbl 09 `"Maternity/paternity leave"', add
label define whyabsnt_lbl 10 `"Labor dispute"', add
label define whyabsnt_lbl 11 `"Weather affected job"', add
label define whyabsnt_lbl 12 `"School/training"', add
label define whyabsnt_lbl 13 `"Civic/military duty"', add
label define whyabsnt_lbl 14 `"Does not work in the business"', add
label define whyabsnt_lbl 15 `"Other"', add
label values whyabsnt whyabsnt_lbl

label define majoract_lbl 0 `"NIU, Children or armed forces"'
label define majoract_lbl 1 `"Working"', add
label define majoract_lbl 2 `"With a job but not at work"', add
label define majoract_lbl 3 `"Looking for work"', add
label define majoract_lbl 4 `"Keeping house"', add
label define majoract_lbl 5 `"At school"', add
label define majoract_lbl 6 `"Unable to work"', add
label define majoract_lbl 7 `"Retired"', add
label define majoract_lbl 8 `"Other"', add
label values majoract majoract_lbl

label define wantjob_lbl 0 `"NIU"'
label define wantjob_lbl 1 `"No"', add
label define wantjob_lbl 2 `"Yes"', add
label define wantjob_lbl 3 `"Maybe, it depends"', add
label define wantjob_lbl 4 `"Do not know"', add
label define wantjob_lbl 9 `"Unknown"', add
label values wantjob wantjob_lbl

label define blvenowk_lbl 0 `"NIU"'
label define blvenowk_lbl 1 `"Yes"', add
label define blvenowk_lbl 2 `"No"', add
label values blvenowk blvenowk_lbl

label define cantfind_lbl 0 `"NIU"'
label define cantfind_lbl 1 `"Yes"', add
label define cantfind_lbl 2 `"No"', add
label values cantfind cantfind_lbl

label define lackschl_lbl 0 `"NIU"'
label define lackschl_lbl 1 `"Yes"', add
label define lackschl_lbl 2 `"No"', add
label values lackschl lackschl_lbl

label define wrongage_lbl 0 `"NIU "'
label define wrongage_lbl 1 `"Yes"', add
label define wrongage_lbl 2 `"No"', add
label values wrongage wrongage_lbl

label define handicap_lbl 0 `"NIU"'
label define handicap_lbl 1 `"Yes"', add
label define handicap_lbl 2 `"No"', add
label values handicap handicap_lbl

label define kidduty_lbl 0 `"NIU"'
label define kidduty_lbl 1 `"Yes"', add
label define kidduty_lbl 2 `"No"', add
label values kidduty kidduty_lbl

label define famduty_lbl 0 `"NIU"'
label define famduty_lbl 1 `"Yes"', add
label define famduty_lbl 2 `"No"', add
label values famduty famduty_lbl

label define schlduty_lbl 0 `"NIU"'
label define schlduty_lbl 1 `"Yes"', add
label define schlduty_lbl 2 `"No"', add
label values schlduty schlduty_lbl

label define ilhealth_lbl 0 `"NIU"'
label define ilhealth_lbl 1 `"Yes"', add
label define ilhealth_lbl 2 `"No"', add
label values ilhealth ilhealth_lbl

label define othereas_lbl 0 `"NIU"'
label define othereas_lbl 1 `"Yes"', add
label define othereas_lbl 2 `"No"', add
label values othereas othereas_lbl

label define unkreasn_lbl 0 `"NIU"'
label define unkreasn_lbl 1 `"Yes"', add
label define unkreasn_lbl 2 `"No"', add
label values unkreasn unkreasn_lbl

label define fwkads_lbl 0 `"NIU"'
label define fwkads_lbl 1 `"Method not used"', add
label define fwkads_lbl 2 `"Method used"', add
label values fwkads fwkads_lbl

label define fwkemplr_lbl 0 `"NIU"'
label define fwkemplr_lbl 1 `"Method not used"', add
label define fwkemplr_lbl 2 `"Method used"', add
label values fwkemplr fwkemplr_lbl

label define fwkother_lbl 0 `"NIU"'
label define fwkother_lbl 1 `"Method not used"', add
label define fwkother_lbl 2 `"Method used"', add
label values fwkother fwkother_lbl

label define fwkpubag_lbl 0 `"NIU"'
label define fwkpubag_lbl 1 `"Method not used"', add
label define fwkpubag_lbl 2 `"Method used"', add
label values fwkpubag fwkpubag_lbl

label define fwkpvtag_lbl 0 `"NIU"'
label define fwkpvtag_lbl 1 `"Method not used"', add
label define fwkpvtag_lbl 2 `"Method used"', add
label values fwkpvtag fwkpvtag_lbl

label define fwkrelat_lbl 0 `"NIU"'
label define fwkrelat_lbl 1 `"Method not used"', add
label define fwkrelat_lbl 2 `"Method used"', add
label values fwkrelat fwkrelat_lbl

label define intenfwk_lbl 0 `"NIU"'
label define intenfwk_lbl 1 `"Yes"', add
label define intenfwk_lbl 2 `"It depends"', add
label define intenfwk_lbl 3 `"No"', add
label define intenfwk_lbl 4 `"Do not know"', add
label values intenfwk intenfwk_lbl

label define whyptly_lbl 0 `"NIU"'
label define whyptly_lbl 1 `"Could not find full time job"', add
label define whyptly_lbl 2 `"Wanted part time"', add
label define whyptly_lbl 3 `"Slack work"', add
label define whyptly_lbl 4 `"Other"', add
label values whyptly whyptly_lbl

label define whyptlwk_lbl 000 `"NIU"'
label define whyptlwk_lbl 001 `"No response"', add
label define whyptlwk_lbl 010 `"Slack work, business conditions"', add
label define whyptlwk_lbl 011 `"Material shortage"', add
label define whyptlwk_lbl 012 `"Plant or machine repairs"', add
label define whyptlwk_lbl 020 `"Seasonal work"', add
label define whyptlwk_lbl 030 `"Weather affected job"', add
label define whyptlwk_lbl 040 `"Labor dispute"', add
label define whyptlwk_lbl 050 `"job started/ended during week"', add
label define whyptlwk_lbl 051 `"New job started"', add
label define whyptlwk_lbl 052 `"Job terminated"', add
label define whyptlwk_lbl 060 `"Could only find part-time"', add
label define whyptlwk_lbl 070 `"Not want full time work"', add
label define whyptlwk_lbl 071 `"Retired/SS limit on earnings"', add
label define whyptlwk_lbl 080 `"Full time work week under 35 hours"', add
label define whyptlwk_lbl 081 `"Full time peak season only"', add
label define whyptlwk_lbl 090 `"Holiday"', add
label define whyptlwk_lbl 100 `"Own illness"', add
label define whyptlwk_lbl 101 `"Health/medical limitation"', add
label define whyptlwk_lbl 110 `"On vacation"', add
label define whyptlwk_lbl 111 `"Vacation/personal day"', add
label define whyptlwk_lbl 120 `"Too busy with house, school, etc"', add
label define whyptlwk_lbl 121 `"Child care problems"', add
label define whyptlwk_lbl 122 `"Other family/personal obligations"', add
label define whyptlwk_lbl 123 `"School/training"', add
label define whyptlwk_lbl 124 `"Civic/military duty"', add
label define whyptlwk_lbl 130 `"Other"', add
label values whyptlwk whyptlwk_lbl

label define usftablw_lbl 0 `"NIU/Children/Armed Forces"'
label define usftablw_lbl 1 `"No"', add
label define usftablw_lbl 2 `"Yes"', add
label values usftablw usftablw_lbl

label define usftptlw_lbl 0 `"NIU"'
label define usftptlw_lbl 1 `"No"', add
label define usftptlw_lbl 2 `"Yes"', add
label values usftptlw usftptlw_lbl

label define lkwkftpt_lbl 0 `"NIU"'
label define lkwkftpt_lbl 1 `"Full time"', add
label define lkwkftpt_lbl 2 `"Part time"', add
label values lkwkftpt lkwkftpt_lbl

label define payifabs_lbl 0 `"NIU"'
label define payifabs_lbl 1 `"Not Paid"', add
label define payifabs_lbl 2 `"Paid"', add
label define payifabs_lbl 3 `"Self-employed"', add
label values payifabs payifabs_lbl

label define wnftlook_lbl 00 `"NIU"'
label define wnftlook_lbl 10 `"Less than 5 years ago"', add
label define wnftlook_lbl 11 `"In the last twelve months"', add
label define wnftlook_lbl 12 `"One to five years ago"', add
label define wnftlook_lbl 20 `"More than I2 months ago, unspecified"', add
label define wnftlook_lbl 30 `"More than 5 years ago"', add
label define wnftlook_lbl 40 `"Never worked"', add
label define wnftlook_lbl 41 `"Never worked full-time 2+ weeks"', add
label define wnftlook_lbl 42 `"Never worked at all"', add
label values wnftlook wnftlook_lbl

label define wnlwnilf_lbl 00 `"NIU"'
label define wnlwnilf_lbl 10 `"Within past 12 months"', add
label define wnlwnilf_lbl 20 `"More than 12 months ago"', add
label define wnlwnilf_lbl 21 `"1 up to 2 years ago"', add
label define wnlwnilf_lbl 22 `"2 up to 3 years ago"', add
label define wnlwnilf_lbl 23 `"3 up to 4 years ago"', add
label define wnlwnilf_lbl 24 `"4 up to 5 years ago"', add
label define wnlwnilf_lbl 25 `"5 or more years ago"', add
label define wnlwnilf_lbl 30 `"Never worked"', add
label values wnlwnilf wnlwnilf_lbl

label define strechlk_lbl 0 `"NIU"'
label define strechlk_lbl 1 `"1 stretch"', add
label define strechlk_lbl 2 `"More than 1 stretch"', add
label define strechlk_lbl 3 `"2 stretches"', add
label define strechlk_lbl 4 `"3+ stretches"', add
label define strechlk_lbl 9 `"Not specified"', add
label values strechlk strechlk_lbl

label define whylook_lbl 0 `"NIU/Children/Armed forces"'
label define whylook_lbl 1 `"Lost job"', add
label define whylook_lbl 2 `"Quit job"', add
label define whylook_lbl 3 `"Left School"', add
label define whylook_lbl 4 `"Wanted temporary work"', add
label define whylook_lbl 5 `"Change in home/family responsibilities"', add
label define whylook_lbl 6 `"Left Military service"', add
label define whylook_lbl 7 `"Other"', add
label values whylook whylook_lbl

label define whynwly_lbl 0 `"NIU"'
label define whynwly_lbl 1 `"Could not find work"', add
label define whynwly_lbl 2 `"Ill or disabled"', add
label define whynwly_lbl 3 `"Taking care of home/family"', add
label define whynwly_lbl 4 `"Going to school"', add
label define whynwly_lbl 5 `"Retired"', add
label define whynwly_lbl 6 `"In Armed Forces"', add
label define whynwly_lbl 7 `"Other"', add
label define whynwly_lbl 9 `"Unknown/missing"', add
label values whynwly whynwly_lbl

label define actnlfly_lbl 00 `"NIU"'
label define actnlfly_lbl 10 `"Ill or disabled"', add
label define actnlfly_lbl 20 `"Taking care of home/family"', add
label define actnlfly_lbl 30 `"Going to school"', add
label define actnlfly_lbl 40 `"Retired"', add
label define actnlfly_lbl 50 `"Other"', add
label define actnlfly_lbl 51 `"Looking for work"', add
label define actnlfly_lbl 52 `"No work available"', add
label define actnlfly_lbl 53 `"Doing unpaid work"', add
label define actnlfly_lbl 54 `"In Armed Forces"', add
label values actnlfly actnlfly_lbl

label define overtime_lbl 0 `"NIU/Armed forces/Children"'
label define overtime_lbl 1 `"No"', add
label define overtime_lbl 2 `"Yes"', add
label values overtime overtime_lbl

label define whyleft_lbl 0 `"NIU"'
label define whyleft_lbl 1 `"Personal, family or school"', add
label define whyleft_lbl 2 `"Health"', add
label define whyleft_lbl 3 `"Retirement or old age"', add
label define whyleft_lbl 4 `"Seasonal job completed"', add
label define whyleft_lbl 5 `"Slack work or business conditions"', add
label define whyleft_lbl 6 `"Temporary nonseasonal job completed"', add
label define whyleft_lbl 7 `"Unsatisfactory work arrangements"', add
label define whyleft_lbl 8 `"Other"', add
label values whyleft whyleft_lbl

label define ptweeks_lbl 00 `"NIU"'
label define ptweeks_lbl 01 `"1 week"', add
label define ptweeks_lbl 02 `"2 weeks"', add
label define ptweeks_lbl 03 `"3 weeks"', add
label define ptweeks_lbl 04 `"4 weeks"', add
label define ptweeks_lbl 05 `"5 weeks"', add
label define ptweeks_lbl 06 `"6 weeks"', add
label define ptweeks_lbl 07 `"7 weeks"', add
label define ptweeks_lbl 08 `"8 weeks"', add
label define ptweeks_lbl 09 `"9 weeks"', add
label define ptweeks_lbl 10 `"10 weeks"', add
label define ptweeks_lbl 11 `"11 weeks"', add
label define ptweeks_lbl 12 `"12 weeks"', add
label define ptweeks_lbl 13 `"13 weeks"', add
label define ptweeks_lbl 14 `"14 weeks"', add
label define ptweeks_lbl 15 `"15 weeks"', add
label define ptweeks_lbl 16 `"16 weeks"', add
label define ptweeks_lbl 17 `"17 weeks"', add
label define ptweeks_lbl 18 `"18 weeks"', add
label define ptweeks_lbl 19 `"19 weeks"', add
label define ptweeks_lbl 20 `"20 weeks"', add
label define ptweeks_lbl 21 `"21 weeks"', add
label define ptweeks_lbl 22 `"22 weeks"', add
label define ptweeks_lbl 23 `"23 weeks"', add
label define ptweeks_lbl 24 `"24 weeks"', add
label define ptweeks_lbl 25 `"25 weeks"', add
label define ptweeks_lbl 26 `"26 weeks"', add
label define ptweeks_lbl 27 `"27 weeks"', add
label define ptweeks_lbl 28 `"28 weeks"', add
label define ptweeks_lbl 29 `"29 weeks"', add
label define ptweeks_lbl 30 `"30 weeks"', add
label define ptweeks_lbl 31 `"31 weeks"', add
label define ptweeks_lbl 32 `"32 weeks"', add
label define ptweeks_lbl 33 `"33 weeks"', add
label define ptweeks_lbl 34 `"34 weeks"', add
label define ptweeks_lbl 35 `"35 weeks"', add
label define ptweeks_lbl 36 `"36 weeks"', add
label define ptweeks_lbl 37 `"37 weeks"', add
label define ptweeks_lbl 38 `"38 weeks"', add
label define ptweeks_lbl 39 `"39 weeks"', add
label define ptweeks_lbl 40 `"40 weeks"', add
label define ptweeks_lbl 41 `"41 weeks"', add
label define ptweeks_lbl 42 `"42 weeks"', add
label define ptweeks_lbl 43 `"43 weeks"', add
label define ptweeks_lbl 44 `"44 weeks"', add
label define ptweeks_lbl 45 `"45 weeks"', add
label define ptweeks_lbl 46 `"46 weeks"', add
label define ptweeks_lbl 47 `"47 weeks"', add
label define ptweeks_lbl 48 `"48 weeks"', add
label define ptweeks_lbl 49 `"49 weeks"', add
label define ptweeks_lbl 50 `"50 weeks"', add
label define ptweeks_lbl 51 `"51 weeks"', add
label define ptweeks_lbl 52 `"52 weeks"', add
label values ptweeks ptweeks_lbl

label define work0375_lbl 0 `"NIU"'
label define work0375_lbl 1 `"No"', add
label define work0375_lbl 2 `"Yes"', add
label values work0375 work0375_lbl

label define work0380_lbl 0 `"NIU"'
label define work0380_lbl 1 `"No"', add
label define work0380_lbl 2 `"Yes"', add
label values work0380 work0380_lbl

label define gotalch_lbl 0 `"NIU"'
label define gotalch_lbl 1 `"No"', add
label define gotalch_lbl 2 `"Yes"', add
label values gotalch gotalch_lbl

label define gotregct_lbl 0 `"NIU"'
label define gotregct_lbl 1 `"No"', add
label define gotregct_lbl 2 `"Yes"', add
label values gotregct gotregct_lbl

label define gotdivid_lbl 0 `"NIU"'
label define gotdivid_lbl 1 `"No"', add
label define gotdivid_lbl 2 `"Yes"', add
label values gotdivid gotdivid_lbl

label define gotelse_lbl 0 `"NIU"'
label define gotelse_lbl 1 `"No"', add
label define gotelse_lbl 2 `"Yes"', add
label values gotelse gotelse_lbl

label define gotestat_lbl 0 `"NIU"'
label define gotestat_lbl 1 `"No"', add
label define gotestat_lbl 2 `"Yes"', add
label values gotestat gotestat_lbl

label define gotss_lbl 0 `"NIU"'
label define gotss_lbl 1 `"No"', add
label define gotss_lbl 2 `"Yes"', add
label values gotss gotss_lbl

label define gotwelfr_lbl 0 `"Blank"'
label define gotwelfr_lbl 1 `"No"', add
label define gotwelfr_lbl 2 `"Yes"', add
label define gotwelfr_lbl 9 `"NIU"', add
label values gotwelfr gotwelfr_lbl

label define gotfedrp_lbl 0 `"NIU"'
label define gotfedrp_lbl 1 `"No"', add
label define gotfedrp_lbl 2 `"Yes"', add
label values gotfedrp gotfedrp_lbl

label define gotstlrp_lbl 0 `"NIU"'
label define gotstlrp_lbl 1 `"No"', add
label define gotstlrp_lbl 2 `"Yes"', add
label values gotstlrp gotstlrp_lbl

label define gotmilrp_lbl 0 `"NIU"'
label define gotmilrp_lbl 1 `"No"', add
label define gotmilrp_lbl 2 `"Yes"', add
label values gotmilrp gotmilrp_lbl

label define gotpvtrp_lbl 0 `"NIU"'
label define gotpvtrp_lbl 1 `"No"', add
label define gotpvtrp_lbl 2 `"Yes"', add
label values gotpvtrp gotpvtrp_lbl

label define gotrent_lbl 0 `"NIU"'
label define gotrent_lbl 1 `"No"', add
label define gotrent_lbl 2 `"Yes"', add
label values gotrent gotrent_lbl

label define gotrrrp_lbl 0 `"NIU"'
label define gotrrrp_lbl 1 `"No"', add
label define gotrrrp_lbl 2 `"Yes"', add
label values gotrrrp gotrrrp_lbl

label define gotvdisa_lbl 0 `"NIU"'
label define gotvdisa_lbl 1 `"No"', add
label define gotvdisa_lbl 2 `"Yes"', add
label values gotvdisa gotvdisa_lbl

label define gotveduc_lbl 0 `"NIU"'
label define gotveduc_lbl 1 `"No"', add
label define gotveduc_lbl 2 `"Yes"', add
label values gotveduc gotveduc_lbl

label define gotvetpa_lbl 0 `"NIU"'
label define gotvetpa_lbl 1 `"No"', add
label define gotvetpa_lbl 2 `"Yes"', add
label values gotvetpa gotvetpa_lbl

label define gotvothe_lbl 0 `"NIU"'
label define gotvothe_lbl 1 `"No"', add
label define gotvothe_lbl 2 `"Yes"', add
label values gotvothe gotvothe_lbl

label define gotvpens_lbl 0 `"NIU"'
label define gotvpens_lbl 1 `"No"', add
label define gotvpens_lbl 2 `"Yes"', add
label values gotvpens gotvpens_lbl

label define gotvsurv_lbl 0 `"NIU"'
label define gotvsurv_lbl 1 `"No"', add
label define gotvsurv_lbl 2 `"Yes"', add
label values gotvsurv gotvsurv_lbl

label define gotwkcom_lbl 0 `"NIU"'
label define gotwkcom_lbl 1 `"No"', add
label define gotwkcom_lbl 2 `"Yes"', add
label values gotwkcom gotwkcom_lbl

label define srcdisa1_lbl 00 `"NIU"'
label define srcdisa1_lbl 01 `"Workers compensation"', add
label define srcdisa1_lbl 02 `"Company or union disability"', add
label define srcdisa1_lbl 03 `"Federal govt disability"', add
label define srcdisa1_lbl 04 `"US military retirement disability"', add
label define srcdisa1_lbl 05 `"State or local govt employee disability"', add
label define srcdisa1_lbl 06 `"US railroad retirement disability"', add
label define srcdisa1_lbl 07 `"Accident or disability insurance"', add
label define srcdisa1_lbl 08 `"Black lung miners disability"', add
label define srcdisa1_lbl 09 `"State temporary sickness"', add
label define srcdisa1_lbl 10 `"Other or don't know"', add
label values srcdisa1 srcdisa1_lbl

label define srcdisa2_lbl 00 `"NIU"'
label define srcdisa2_lbl 01 `"Workers compensation"', add
label define srcdisa2_lbl 02 `"Company or union disability"', add
label define srcdisa2_lbl 03 `"Federal govt disability"', add
label define srcdisa2_lbl 04 `"US military retirement disability"', add
label define srcdisa2_lbl 05 `"State or local govt employee disability"', add
label define srcdisa2_lbl 06 `"US railroad retirement disability"', add
label define srcdisa2_lbl 07 `"Accident or disability insurance"', add
label define srcdisa2_lbl 08 `"Black lung miners disability"', add
label define srcdisa2_lbl 09 `"State temporary sickness"', add
label define srcdisa2_lbl 10 `"Other or don't know"', add
label values srcdisa2 srcdisa2_lbl

label define srcearn_lbl 0 `"NIU"'
label define srcearn_lbl 1 `"Wage and salary"', add
label define srcearn_lbl 2 `"Self employment"', add
label define srcearn_lbl 3 `"Farm self employment"', add
label define srcearn_lbl 4 `"Without pay"', add
label values srcearn srcearn_lbl

label define srceduc_lbl 0 `"NIU"'
label define srceduc_lbl 1 `"Government assistance"', add
label define srceduc_lbl 2 `"Scholarships, grants etc from school"', add
label define srceduc_lbl 3 `"Other assistance"', add
label define srceduc_lbl 4 `"Govt assistance and scholarships, grants etc from school"', add
label define srceduc_lbl 5 `"Govt assistance and other assistance"', add
label define srceduc_lbl 6 `"Scholarships, grants etc from school and other assistance"', add
label define srceduc_lbl 7 `"Govt assistance, scholarships, grants etc from school, and other assistance"', add
label values srceduc srceduc_lbl

label define srcreti1_lbl 0 `"NIU"'
label define srcreti1_lbl 1 `"Company or Union  pension"', add
label define srcreti1_lbl 2 `"Federal Government retirement Pension"', add
label define srcreti1_lbl 3 `"US Military retirement pension"', add
label define srcreti1_lbl 4 `"State or local Govt retirement pension"', add
label define srcreti1_lbl 5 `"US Railroad retirement pension"', add
label define srcreti1_lbl 6 `"Regular payments from annuities or paid-up insurance policies"', add
label define srcreti1_lbl 7 `"Regular payments from IRA, KEOGH, or 401K accounts"', add
label define srcreti1_lbl 8 `"Other or don't know"', add
label values srcreti1 srcreti1_lbl

label define srcreti2_lbl 0 `"NIU"'
label define srcreti2_lbl 1 `"Company or Union  pension"', add
label define srcreti2_lbl 2 `"Federal Government retirement Pension"', add
label define srcreti2_lbl 3 `"US Military retirement pension"', add
label define srcreti2_lbl 4 `"State or local Govt retirement pension"', add
label define srcreti2_lbl 5 `"US Railroad retirement pension"', add
label define srcreti2_lbl 6 `"Regular payments from annuities or paid-up insurance policies"', add
label define srcreti2_lbl 7 `"Regular payments from IRA, KEOGH, or 401K accounts"', add
label define srcreti2_lbl 8 `"Other or do not know"', add
label values srcreti2 srcreti2_lbl

label define srcssi_lbl 0 `"NIU"'
label define srcssi_lbl 1 `"U.S government"', add
label define srcssi_lbl 2 `"State/local government"', add
label define srcssi_lbl 3 `"Both"', add
label values srcssi srcssi_lbl

label define srcsurv1_lbl 00 `"NIU"'
label define srcsurv1_lbl 01 `"Company or union survivor pension"', add
label define srcsurv1_lbl 02 `"Federal government pension"', add
label define srcsurv1_lbl 03 `"US military retirement survivor pension"', add
label define srcsurv1_lbl 04 `"State or local govt survivor pension"', add
label define srcsurv1_lbl 05 `"US railroad retirement survivor pension"', add
label define srcsurv1_lbl 06 `"Workers compensation pension"', add
label define srcsurv1_lbl 07 `"Black lung survivor pension"', add
label define srcsurv1_lbl 08 `"Regular payments from estates or trusts"', add
label define srcsurv1_lbl 09 `"Regular payments from annuities or paid-up life insurance"', add
label define srcsurv1_lbl 10 `"Other or do not know"', add
label values srcsurv1 srcsurv1_lbl

label define srcsurv2_lbl 00 `"NIU"'
label define srcsurv2_lbl 01 `"Company or union survivor pension"', add
label define srcsurv2_lbl 02 `"Federal government pension"', add
label define srcsurv2_lbl 03 `"US military retirement survivor pension"', add
label define srcsurv2_lbl 04 `"State or local govt survivor pension"', add
label define srcsurv2_lbl 05 `"US railroad retirement survivor pension"', add
label define srcsurv2_lbl 06 `"Workers compensation pension"', add
label define srcsurv2_lbl 07 `"Black lung survivor pension"', add
label define srcsurv2_lbl 08 `"Regular payments from estates or trusts"', add
label define srcsurv2_lbl 09 `"Regular payments from annuities or paid-up life insurance"', add
label define srcsurv2_lbl 10 `"Other or do not know"', add
label values srcsurv2 srcsurv2_lbl

label define srcunemp_lbl 0 `"No supplemental or strike benefits"'
label define srcunemp_lbl 1 `"Supplemental unemployment benefits"', add
label define srcunemp_lbl 2 `"Union unemployment or strike benefits"', add
label define srcunemp_lbl 3 `"Both"', add
label define srcunemp_lbl 9 `"NIU"', add
label values srcunemp srcunemp_lbl

label define srcwelfr_lbl 0 `"NIU"'
label define srcwelfr_lbl 1 `"AFDC/TANF"', add
label define srcwelfr_lbl 2 `"Other"', add
label define srcwelfr_lbl 3 `"Both AFDC/TANF and other"', add
label values srcwelfr srcwelfr_lbl

label define srcwkcom_lbl 0 `"NIU"'
label define srcwkcom_lbl 1 `"State Workers Compensation"', add
label define srcwkcom_lbl 2 `"Employer or employers insurance"', add
label define srcwkcom_lbl 3 `"Own insurance"', add
label define srcwkcom_lbl 4 `"Other"', add
label values srcwkcom srcwkcom_lbl

label define vetqa_lbl 0 `"NIU"'
label define vetqa_lbl 1 `"No"', add
label define vetqa_lbl 2 `"Yes"', add
label values vetqa vetqa_lbl

label define gotunemp_lbl 0 `"NIU"'
label define gotunemp_lbl 1 `"No"', add
label define gotunemp_lbl 2 `"Yes"', add
label values gotunemp gotunemp_lbl

label define offpov_lbl 01 `"Below Poverty Line"'
label define offpov_lbl 02 `"Above Poverty Line"', add
label define offpov_lbl 99 `"NIU"', add
label values offpov offpov_lbl

label define offpovuniv_lbl 00 `"Out of Poverty Universe"'
label define offpovuniv_lbl 01 `"In Poverty Universe"', add
label values offpovuniv offpovuniv_lbl

label define offreason_lbl 01 `"No Family Income Issue - Coding Error/Out of Poverty Universe"'
label define offreason_lbl 02 `"Family Income Missing - Out of Poverty Universe"', add
label define offreason_lbl 03 `"Family Income Recode Issue"', add
label define offreason_lbl 99 `"NIU"', add
label values offreason offreason_lbl

label define poverty_lbl 00 `"NIU"'
label define poverty_lbl 10 `"Below poverty"', add
label define poverty_lbl 20 `"Above poverty"', add
label define poverty_lbl 21 `"100-124 percent of the low-income level"', add
label define poverty_lbl 22 `"125-149 percent of the low-income level"', add
label define poverty_lbl 23 `"150 percent and above the low-income level"', add
label values poverty poverty_lbl

label define vetstat_lbl 0 `"NIU"'
label define vetstat_lbl 1 `"No service"', add
label define vetstat_lbl 2 `"Yes"', add
label define vetstat_lbl 9 `"Unknown"', add
label values vetstat vetstat_lbl

label define vetlast_lbl 00 `"NIU"'
label define vetlast_lbl 01 `"No service"', add
label define vetlast_lbl 02 `"World War I"', add
label define vetlast_lbl 03 `"November 1941 or earlier"', add
label define vetlast_lbl 04 `"World War II"', add
label define vetlast_lbl 05 `"Peacetime period B"', add
label define vetlast_lbl 06 `"Korean War"', add
label define vetlast_lbl 07 `"Peacetime period A"', add
label define vetlast_lbl 08 `"Vietnam Era"', add
label define vetlast_lbl 09 `"Other service"', add
label define vetlast_lbl 10 `"May 1975 to July 1990"', add
label define vetlast_lbl 11 `"August 1990 to August 2001"', add
label define vetlast_lbl 12 `"September 2001 or later"', add
label define vetlast_lbl 99 `"Unknown"', add
label values vetlast vetlast_lbl

label define milit75_lbl 0 `"NIU"'
label define milit75_lbl 1 `"No"', add
label define milit75_lbl 2 `"Yes"', add
label values milit75 milit75_lbl

label define milit80_lbl 0 `"NIU"'
label define milit80_lbl 1 `"No"', add
label define milit80_lbl 2 `"Yes"', add
label values milit80 milit80_lbl

label define disabwrk_lbl 0 `"NIU"'
label define disabwrk_lbl 1 `"No disability that affects work"', add
label define disabwrk_lbl 2 `"Disability limits or prevents work"', add
label values disabwrk disabwrk_lbl

label define quitsick_lbl 0 `"NIU"'
label define quitsick_lbl 1 `"No, did not quit job or retire"', add
label define quitsick_lbl 2 `"Yes, quit job or retired"', add
label values quitsick quitsick_lbl

label define migsta1_lbl 00 `"NIU"'
label define migsta1_lbl 01 `"Alabama"', add
label define migsta1_lbl 02 `"Alaska"', add
label define migsta1_lbl 04 `"Arizona"', add
label define migsta1_lbl 05 `"Arkansas"', add
label define migsta1_lbl 06 `"California"', add
label define migsta1_lbl 08 `"Colorado"', add
label define migsta1_lbl 09 `"Connecticut"', add
label define migsta1_lbl 10 `"Delaware"', add
label define migsta1_lbl 11 `"District of Columbia"', add
label define migsta1_lbl 12 `"Florida"', add
label define migsta1_lbl 13 `"Georgia"', add
label define migsta1_lbl 15 `"Hawaii"', add
label define migsta1_lbl 16 `"Idaho"', add
label define migsta1_lbl 17 `"Illinois"', add
label define migsta1_lbl 18 `"Indiana"', add
label define migsta1_lbl 19 `"Iowa"', add
label define migsta1_lbl 20 `"Kansas"', add
label define migsta1_lbl 21 `"Kentucky"', add
label define migsta1_lbl 22 `"Louisiana"', add
label define migsta1_lbl 23 `"Maine"', add
label define migsta1_lbl 24 `"Maryland"', add
label define migsta1_lbl 25 `"Massachusetts"', add
label define migsta1_lbl 26 `"Michigan"', add
label define migsta1_lbl 27 `"Minnesota"', add
label define migsta1_lbl 28 `"Mississippi"', add
label define migsta1_lbl 29 `"Missouri"', add
label define migsta1_lbl 30 `"Montana"', add
label define migsta1_lbl 31 `"Nebraska"', add
label define migsta1_lbl 32 `"Nevada"', add
label define migsta1_lbl 33 `"New Hampshire"', add
label define migsta1_lbl 34 `"New Jersey"', add
label define migsta1_lbl 35 `"New Mexico"', add
label define migsta1_lbl 36 `"New York"', add
label define migsta1_lbl 37 `"North Carolina"', add
label define migsta1_lbl 38 `"North Dakota"', add
label define migsta1_lbl 39 `"Ohio"', add
label define migsta1_lbl 40 `"Oklahoma"', add
label define migsta1_lbl 41 `"Oregon"', add
label define migsta1_lbl 42 `"Pennsylvania"', add
label define migsta1_lbl 44 `"Rhode Island"', add
label define migsta1_lbl 45 `"South Carolina"', add
label define migsta1_lbl 46 `"South Dakota"', add
label define migsta1_lbl 47 `"Tennessee"', add
label define migsta1_lbl 48 `"Texas"', add
label define migsta1_lbl 49 `"Utah"', add
label define migsta1_lbl 50 `"Vermont"', add
label define migsta1_lbl 51 `"Virginia"', add
label define migsta1_lbl 53 `"Washington"', add
label define migsta1_lbl 54 `"West Virginia"', add
label define migsta1_lbl 55 `"Wisconsin"', add
label define migsta1_lbl 56 `"Wyoming"', add
label define migsta1_lbl 91 `"Abroad"', add
label define migsta1_lbl 99 `"Same house"', add
label values migsta1 migsta1_lbl

label define migsta5_lbl 00 `"NIU"'
label define migsta5_lbl 01 `"Alabama"', add
label define migsta5_lbl 02 `"Alaska"', add
label define migsta5_lbl 04 `"Arizona"', add
label define migsta5_lbl 05 `"Arkansas"', add
label define migsta5_lbl 06 `"California"', add
label define migsta5_lbl 08 `"Colorado"', add
label define migsta5_lbl 09 `"Connecticut"', add
label define migsta5_lbl 10 `"Delaware"', add
label define migsta5_lbl 11 `"District of Columbia"', add
label define migsta5_lbl 12 `"Florida"', add
label define migsta5_lbl 13 `"Georgia"', add
label define migsta5_lbl 15 `"Hawaii"', add
label define migsta5_lbl 16 `"Idaho"', add
label define migsta5_lbl 17 `"Illinois"', add
label define migsta5_lbl 18 `"Indiana"', add
label define migsta5_lbl 19 `"Iowa"', add
label define migsta5_lbl 20 `"Kansas"', add
label define migsta5_lbl 21 `"Kentucky"', add
label define migsta5_lbl 22 `"Louisiana"', add
label define migsta5_lbl 23 `"Maine"', add
label define migsta5_lbl 24 `"Maryland"', add
label define migsta5_lbl 25 `"Massachusetts"', add
label define migsta5_lbl 26 `"Michigan"', add
label define migsta5_lbl 27 `"Minnesota"', add
label define migsta5_lbl 28 `"Mississippi"', add
label define migsta5_lbl 29 `"Missouri"', add
label define migsta5_lbl 30 `"Montana"', add
label define migsta5_lbl 31 `"Nebraska"', add
label define migsta5_lbl 32 `"Nevada"', add
label define migsta5_lbl 33 `"New Hampshire"', add
label define migsta5_lbl 34 `"New Jersey"', add
label define migsta5_lbl 35 `"New Mexico"', add
label define migsta5_lbl 36 `"New York"', add
label define migsta5_lbl 37 `"North Carolina"', add
label define migsta5_lbl 38 `"North Dakota"', add
label define migsta5_lbl 39 `"Ohio"', add
label define migsta5_lbl 40 `"Oklahoma"', add
label define migsta5_lbl 41 `"Oregon"', add
label define migsta5_lbl 42 `"Pennsylvania"', add
label define migsta5_lbl 44 `"Rhode Island"', add
label define migsta5_lbl 45 `"South Carolina"', add
label define migsta5_lbl 46 `"South Dakota"', add
label define migsta5_lbl 47 `"Tennessee"', add
label define migsta5_lbl 48 `"Texas"', add
label define migsta5_lbl 49 `"Utah"', add
label define migsta5_lbl 50 `"Vermont"', add
label define migsta5_lbl 51 `"Virginia"', add
label define migsta5_lbl 53 `"Washington"', add
label define migsta5_lbl 54 `"West Virginia"', add
label define migsta5_lbl 55 `"Wisconsin"', add
label define migsta5_lbl 56 `"Wyoming"', add
label define migsta5_lbl 91 `"Abroad"', add
label values migsta5 migsta5_lbl

label define migrate1_lbl 0 `"NIU"'
label define migrate1_lbl 1 `"Same house"', add
label define migrate1_lbl 2 `"Different house, place not reported"', add
label define migrate1_lbl 3 `"Moved within county"', add
label define migrate1_lbl 4 `"Moved within state, different county"', add
label define migrate1_lbl 5 `"Moved between states"', add
label define migrate1_lbl 6 `"Abroad"', add
label define migrate1_lbl 9 `"Unknown"', add
label values migrate1 migrate1_lbl

label define migrate5_lbl 00 `"NIU"'
label define migrate5_lbl 10 `"Same house"', add
label define migrate5_lbl 20 `"Place not reported"', add
label define migrate5_lbl 30 `"Moved within county"', add
label define migrate5_lbl 40 `"Moved within state, between counties"', add
label define migrate5_lbl 41 `"Different county, same state, same SMSA"', add
label define migrate5_lbl 42 `"Different county, same state, different SMSA"', add
label define migrate5_lbl 50 `"Moved between states"', add
label define migrate5_lbl 51 `"Moved between contiguous states"', add
label define migrate5_lbl 52 `"Moved between non-contiguous states"', add
label define migrate5_lbl 60 `"Abroad five years ago"', add
label values migrate5 migrate5_lbl

label define migrat75_lbl 00 `"NIU"'
label define migrat75_lbl 10 `"Same house"', add
label define migrat75_lbl 30 `"Moved within county"', add
label define migrat75_lbl 40 `"Moved within state, between counties"', add
label define migrat75_lbl 41 `"Different county, same state, same SMSA"', add
label define migrat75_lbl 42 `"Different county, same state, not in same SMSA"', add
label define migrat75_lbl 50 `"Moved between states"', add
label define migrat75_lbl 51 `"Moved between contiguous states"', add
label define migrat75_lbl 52 `"Moved between non-contiguous states"', add
label define migrat75_lbl 60 `"Abroad five years ago"', add
label define migrat75_lbl 90 `"Unknown"', add
label values migrat75 migrat75_lbl

label define hcovany_lbl 1 `"Not covered"'
label define hcovany_lbl 2 `"Covered"', add
label values hcovany hcovany_lbl

label define hcovpriv_lbl 1 `"Not covered"'
label define hcovpriv_lbl 2 `"Covered"', add
label values hcovpriv hcovpriv_lbl

label define hcovpub_lbl 1 `"Not covered"'
label define hcovpub_lbl 2 `"Covered"', add
label values hcovpub hcovpub_lbl

label define hinscaid_lbl 1 `"Not covered"'
label define hinscaid_lbl 2 `"Covered"', add
label values hinscaid hinscaid_lbl

label define hinscare_lbl 1 `"Not covered"'
label define hinscare_lbl 2 `"Covered"', add
label values hinscare hinscare_lbl

label define hinsmil_lbl 1 `"Not covered"'
label define hinsmil_lbl 2 `"Covered"', add
label values hinsmil hinsmil_lbl

label define inclugh_lbl 0 `"NIU"'
label define inclugh_lbl 1 `"No"', add
label define inclugh_lbl 2 `"Yes"', add
label values inclugh inclugh_lbl

label define paidgh_lbl 00 `"NIU"'
label define paidgh_lbl 10 `"No"', add
label define paidgh_lbl 20 `"Yes"', add
label define paidgh_lbl 21 `"Yes, paid for part"', add
label define paidgh_lbl 22 `"Yes, paid for all"', add
label values paidgh paidgh_lbl

label define higroup_lbl 1 `"No"'
label define higroup_lbl 2 `"Yes"', add
label values higroup higroup_lbl

label define himcaid_lbl 1 `"No"'
label define himcaid_lbl 2 `"Yes"', add
label values himcaid himcaid_lbl

label define himcare_lbl 0 `"NIU"'
label define himcare_lbl 1 `"No"', add
label define himcare_lbl 2 `"Yes"', add
label values himcare himcare_lbl

label define hichamp_lbl 1 `"No"'
label define hichamp_lbl 2 `"Yes"', add
label values hichamp hichamp_lbl

label define hiother_lbl 1 `"No"'
label define hiother_lbl 2 `"Yes"', add
label values hiother hiother_lbl

label define whoelsgh_lbl 0 `"NIU"'
label define whoelsgh_lbl 1 `"Spouse"', add
label define whoelsgh_lbl 2 `"Children"', add
label define whoelsgh_lbl 3 `"Spouse and children"', add
label define whoelsgh_lbl 4 `"Other persons"', add
label define whoelsgh_lbl 5 `"Self only"', add
label values whoelsgh whoelsgh_lbl

label define whoelsoi_lbl 0 `"NIU"'
label define whoelsoi_lbl 1 `"Spouse"', add
label define whoelsoi_lbl 2 `"Children"', add
label define whoelsoi_lbl 3 `"Spouse and children"', add
label define whoelsoi_lbl 4 `"Other persons"', add
label define whoelsoi_lbl 5 `"Self only"', add
label values whoelsoi whoelsoi_lbl

label define phinsur_lbl 0 `"NIU"'
label define phinsur_lbl 1 `"No"', add
label define phinsur_lbl 2 `"Yes"', add
label values phinsur phinsur_lbl

label define phiown_lbl 0 `"NIU"'
label define phiown_lbl 1 `"No"', add
label define phiown_lbl 2 `"Yes"', add
label values phiown phiown_lbl

label define phispous_lbl 0 `"NIU"'
label define phispous_lbl 1 `"No"', add
label define phispous_lbl 2 `"Yes"', add
label values phispous phispous_lbl

label define phihhkid_lbl 0 `"NIU"'
label define phihhkid_lbl 1 `"No"', add
label define phihhkid_lbl 2 `"Yes"', add
label values phihhkid phihhkid_lbl

label define phinhkid_lbl 0 `"NIU"'
label define phinhkid_lbl 1 `"No"', add
label define phinhkid_lbl 2 `"Yes"', add
label values phinhkid phinhkid_lbl

label define phiothr_lbl 0 `"NIU"'
label define phiothr_lbl 1 `"No"', add
label define phiothr_lbl 2 `"Yes"', add
label values phiothr phiothr_lbl

label define phiself_lbl 0 `"NIU"'
label define phiself_lbl 1 `"No"', add
label define phiself_lbl 2 `"Yes"', add
label values phiself phiself_lbl

label define covergh_lbl 1 `"No"'
label define covergh_lbl 2 `"Yes"', add
label values covergh covergh_lbl

label define coverpi_lbl 1 `"No"'
label define coverpi_lbl 2 `"Yes"', add
label values coverpi coverpi_lbl

label define kidpriv_lbl 0 `"NIU"'
label define kidpriv_lbl 1 `"Not covered"', add
label define kidpriv_lbl 2 `"Covered by person in hh"', add
label define kidpriv_lbl 3 `"Covered by person outside hh"', add
label values kidpriv kidpriv_lbl

label define kidcaid_lbl 0 `"NIU"'
label define kidcaid_lbl 1 `"No"', add
label define kidcaid_lbl 2 `"Yes"', add
label values kidcaid kidcaid_lbl

label define ftype_lbl 1 `"Primary family"'
label define ftype_lbl 2 `"Nonfamily householder"', add
label define ftype_lbl 3 `"Related subfamily"', add
label define ftype_lbl 4 `"Unrelated subfamily"', add
label define ftype_lbl 5 `"Secondary individual"', add
label define ftype_lbl 9 `"Missing"', add
label values ftype ftype_lbl

label define wkstat_lbl 0 `"Children or Armed Forces"'
label define wkstat_lbl 1 `"Employed full time"', add
label define wkstat_lbl 2 `"Employed part time"', add
label define wkstat_lbl 3 `"Employed part time for economic reason"', add
label define wkstat_lbl 4 `"Employed part time for non-economic reason"', add
label define wkstat_lbl 5 `"Unemployed part time"', add
label define wkstat_lbl 6 `"Unemployed full time"', add
label define wkstat_lbl 9 `"NIU, NILF, or blank"', add
label values wkstat wkstat_lbl

label define famkind_lbl 1 `"Husband/wife family"'
label define famkind_lbl 2 `"Male reference person"', add
label define famkind_lbl 3 `"Female reference person"', add
label values famkind famkind_lbl

label define eligorg_lbl 0 `"Not eligible"'
label define eligorg_lbl 1 `"Eligible"', add
label values eligorg eligorg_lbl


