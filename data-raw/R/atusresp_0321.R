# Modified from atusresp_0321.sas
# Prof. Erik Erhardt
# University of New Mexico
# 12/18/2022

# Read data
dat_atusresp_0321 <-
  readr::read_csv(
    file = "./data/atusresp_0321.dat"
  , show_col_types = FALSE
  )

# Remove attributes
attr(dat_atusresp_0321, "spec") <- NULL

# Label factor levels
dat_atusresp_0321 <-
  dat_atusresp_0321 %>%
  dplyr::mutate(
    TEABSRSN =
      TEABSRSN %>%
      replace(
        TEABSRSN %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:14)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "On layoff (temporary or indefinite)"
          , "Slack work/business conditions"
          , "Waiting for a new job to begin"
          , "Vacation/personal days"
          , "Own illness/injury/medical problems"
          , "Childcare problems"
          , "Other family/personal obligation"
          , "Maternity/paternity leave"
          , "Labor dispute"
          , "Weather affected job"
          , "School/training"
          , "Civic/military duty"
          , "Does not work in the business"
          , "Other"
          )
      ) %>%
      forcats::fct_drop()
  , TEERNHRY =
      TEERNHRY %>%
      replace(
        TEERNHRY %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Paid hourly"
          , "Not paid hourly"
          )
      ) %>%
      forcats::fct_drop()
  , TEERNPER =
      TEERNPER %>%
      replace(
        TEERNPER %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:7)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Hourly"
          , "Weekly"
          , "Bi-weekly"
          , "Twice monthly"
          , "Monthly"
          , "Annually"
          , "Other"
          )
      ) %>%
      forcats::fct_drop()
  , TEERNRT =
      TEERNRT %>%
      replace(
        TEERNRT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TEERNUOT =
      TEERNUOT %>%
      replace(
        TEERNUOT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TEHRFTPT =
      TEHRFTPT %>%
      replace(
        TEHRFTPT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:3)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Hours vary"
          )
      ) %>%
      forcats::fct_drop()
  , TEIO1COW =
      TEIO1COW %>%
      replace(
        TEIO1COW %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:8)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Government, federal"
          , "Government, state"
          , "Government, local"
          , "Private, for profit"
          , "Private, nonprofit"
          , "Self-employed, incorporated"
          , "Self-employed, unincorporated"
          , "Without pay"
          )
      ) %>%
      forcats::fct_drop()
  , TELAYAVL =
      TELAYAVL %>%
      replace(
        TELAYAVL %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TELAYLK =
      TELAYLK %>%
      replace(
        TELAYLK %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TELFS =
      TELFS %>%
      replace(
        TELFS %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:5)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Employed - at work"
          , "Employed - absent"
          , "Unemployed - on layoff"
          , "Unemployed - looking"
          , "Not in labor force"
          )
      ) %>%
      forcats::fct_drop()
  , TELKAVL =
      TELKAVL %>%
      replace(
        TELKAVL %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TELKM1 =
      TELKM1 %>%
      replace(
        TELKM1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:13)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Checked union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Nothing"
          , "Other passive"
          )
      ) %>%
      forcats::fct_drop()
  , TEMJOT =
      TEMJOT %>%
      replace(
        TEMJOT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      )
 %>%
      forcats::fct_drop()
  , TERET1 =
      TERET1 %>%
      replace(
        TERET1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:3)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes or maybe/it depends"
          , "No"
          , "Has a job"
          )
      ) %>%
      forcats::fct_drop()
  , TESCHENR =
      TESCHENR %>%
      replace(
        TESCHENR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TESCHFT =
      TESCHFT %>%
      replace(
        TESCHFT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Full time"
          , "Part time"
          )
      ) %>%
      forcats::fct_drop()
  , TESCHLVL =
      TESCHLVL %>%
      replace(
        TESCHLVL %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "High school"
          , "College or university"
          )
      ) %>%
      forcats::fct_drop()
  , TESPEMPNOT =
      TESPEMPNOT %>%
      replace(
        TESPEMPNOT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Employed"
          , "Not employed"
          )
      ) %>%
      forcats::fct_drop()
  , TRDPFTPT =
      TRDPFTPT %>%
      replace(
        TRDPFTPT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Full time"
          , "Part time"
          )
      ) %>%
      forcats::fct_drop()
  , TRDTOCC1 =
      TRDTOCC1 %>%
      replace(
        TRDTOCC1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:22)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Management occupations"
          , "Business and financial operations occupations"
          , "Computer and mathematical science occupations"
          , "Architecture and engineering occupations"
          , "Life, physical, and social science occupations"
          , "Community and social service occupations"
          , "Legal occupations"
          , "Education, training, and library occupations"
          , "Arts, design, entertainment, sports, and media occupations"
          , "Healthcare practitioner and technical occupations"
          , "Healthcare support occupations"
          , "Protective service occupations"
          , "Food preparation and serving related occupations"
          , "Building and grounds cleaning and maintenance occupations"
          , "Personal care and service occupations"
          , "Sales and related occupations"
          , "Office and administrative support occupations"
          , "Farming, fishing, and forestry occupations"
          , "Construction and extraction occupations"
          , "Installation, maintenance, and repair occupations"
          , "Production occupations"
          , "Transportation and material moving occupations"
          )
      ) %>%
      forcats::fct_drop()
  , TREMODR =
      TREMODR %>%
      replace(
        TREMODR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Did not respond to Eating and Health Module"
          , "Responded to Eating and Health Module"
          )
      ) %>%
      forcats::fct_drop()
  , TRERNUPD =
      TRERNUPD %>%
      replace(
        TRERNUPD %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Earnings carried forward from final CPS interview"
          , "Earnings updated in ATUS"
          )
      ) %>%
      forcats::fct_drop()
  , TRHERNAL =
      TRHERNAL %>%
      replace(
        TRHERNAL %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "TRERNHLY does not contain allocated information"
          , "TRERNHLY contains allocated information"
          )
      ) %>%
      forcats::fct_drop()
  , TRHHCHILD =
      TRHHCHILD %>%
      replace(
        TRHHCHILD %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TRHOLIDAY =
      TRHOLIDAY %>%
      replace(
        TRHOLIDAY %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Diary day was not a holiday"
          , "Diary day was a holiday"
          )
      ) %>%
      forcats::fct_drop()
  , TRIMIND1 =
      TRIMIND1 %>%
      replace(
        TRIMIND1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:21)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Agriculture, forestry, fishing, and hunting"
          , "Mining"
          , "Construction"
          , "Manufacturing - durable goods"
          , "Manufacturing - non-durable goods"
          , "Wholesale trade"
          , "Retail trade"
          , "Transportation and warehousing"
          , "Utilities"
          , "Information"
          , "Finance and insurance"
          , "Real estate and rental and leasing"
          , "Professional and technical services"
          , "Management, administrative and waste management services"
          , "Educational services"
          , "Health care and social services"
          , "Arts, entertainment, and recreation"
          , "Accommodation and food services"
          , "Private households"
          , "Other services, except private households"
          , "Public administration"
          )
      ) %>%
      forcats::fct_drop()
  , TRLVMODR =
      TRLVMODR %>%
      replace(
        TRLVMODR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Respondent was eligible for the Leave module, but did not complete it."
          , "Respondent completed the leave module."
          )
      ) %>%
      forcats::fct_drop()
  , TRMJIND1 =
      TRMJIND1 %>%
      replace(
        TRMJIND1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:13)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Agriculture, forestry, fishing, and hunting"
          , "Mining"
          , "Construction"
          , "Manufacturing"
          , "Wholesale and retail trade"
          , "Transportation and utilities"
          , "Information"
          , "Financial activities"
          , "Professional and business services"
          , "Educational and health services"
          , "Leisure and hospitality"
          , "Other services"
          , "Public administration"
          )
      ) %>%
      forcats::fct_drop()
  , TRMJOCC1 =
      TRMJOCC1 %>%
      replace(
        TRMJOCC1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:10)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Management, business, and financial occupations"
          , "Professional and related occupations"
          , "Service occupations"
          , "Sales and related occupations"
          , "Office and administrative support occupations"
          , "Farming, fishing, and forestry occupations"
          , "Construction and extraction occupations"
          , "Installation, maintenance, and repair occupations"
          , "Production occupations"
          , "Transportation and material moving occupations"
          )
      ) %>%
      forcats::fct_drop()
  , TRMJOCGR =
      TRMJOCGR %>%
      replace(
        TRMJOCGR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:6)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Management, professional, and related occupations"
          , "Service occupations"
          , "Sales and office occupations"
          , "Farming, fishing, and forestry occupations"
          , "Construction and maintenance occupations"
          , "Production, transportation, and material moving occupations"
          )
      ) %>%
      forcats::fct_drop()
  , TRNHHCHILD =
      TRNHHCHILD %>%
      replace(
        TRNHHCHILD %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TROHHCHILD =
      TROHHCHILD %>%
      replace(
        TROHHCHILD %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TRSPFTPT =
      TRSPFTPT %>%
      replace(
        TRSPFTPT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:3)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Full time"
          , "Part time"
          , "Hours vary"
          )
      ) %>%
      forcats::fct_drop()
  , TRSPPRES =
      TRSPPRES %>%
      replace(
        TRSPPRES %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:3)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Spouse present"
          , "Unmarried partner present"
          , "No spouse or unmarried partner present"
          )
      ) %>%
      forcats::fct_drop()
  , TRWBMODR =
      TRWBMODR %>%
      replace(
        TRWBMODR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Did not respond to Well-Being Module"
          , "Responded to the Well-Being Module"
          )
      ) %>%
      forcats::fct_drop()
  , TRWERNAL =
      TRWERNAL %>%
      replace(
        TRWERNAL %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "TRERNWA does not contain allocated information"
          , "TRERNWA contains allocated information"
          )
      ) %>%
      forcats::fct_drop()
  , TTHR =
      TTHR %>%
      replace(
        TTHR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Not topcoded"
          , "Topcoded"
          )
      ) %>%
      forcats::fct_drop()
  , TTOT =
      TTOT %>%
      replace(
        TTOT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Not topcoded"
          , "Topcoded"
          )
      ) %>%
      forcats::fct_drop()
  , TTWK =
      TTWK %>%
      replace(
        TTWK %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 0:1)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Not topcoded"
          , "Topcoded"
          )
      ) %>%
      forcats::fct_drop()
  , TUABSOT =
      TUABSOT %>%
      replace(
        TUABSOT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:5)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Retired"
          , "Disabled"
          , "Unable to work"
          )
      ) %>%
      forcats::fct_drop()
  , TUBUS =
      TUBUS %>%
      replace(
        TUBUS %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUBUS1 =
      TUBUS1 %>%
      replace(
        TUBUS1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUBUS2OT =
      TUBUS2OT %>%
      replace(
        TUBUS2OT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUDIARYDAY =
      TUDIARYDAY %>%
      replace(
        TUDIARYDAY %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:7)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Sunday"
          , "Monday"
          , "Tuesday"
          , "Wednesday"
          , "Thursday"
          , "Friday"
          , "Saturday"
          )
      ) %>%
      forcats::fct_drop()
  , TUDIS =
      TUDIS %>%
      replace(
        TUDIS %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:3)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Did not have a disability last time"
          )
      ) %>%
      forcats::fct_drop()
  , TUDIS1 =
      TUDIS1 %>%
      replace(
        TUDIS1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUDIS2 =
      TUDIS2 %>%
      replace(
        TUDIS2 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUECYTD =
      TUECYTD %>%
      replace(
        TUECYTD %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUELDER =
      TUELDER %>%
      replace(
        TUELDER %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUELFREQ =
      TUELFREQ %>%
      replace(
        TUELFREQ %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:7)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Daily"
          , "Several times a week"
          , "About once a week"
          , "Several times a month"
          , "Once a month"
          , "One time"
          , "Other"
          )
      ) %>%
      forcats::fct_drop()
  , TUFWK =
      TUFWK %>%
      replace(
        TUFWK %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:5)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Retired"
          , "Disabled"
          , "Unable to work"
          )
      ) %>%
      forcats::fct_drop()
  , TUIO1MFG =
      TUIO1MFG %>%
      replace(
        TUIO1MFG %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:4)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Manufacturing"
          , "Retail trade"
          , "Wholesale trade"
          , "Something else"
          )
      ) %>%
      forcats::fct_drop()
  , TUIODP1 =
      TUIODP1 %>%
      replace(
        TUIODP1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUIODP2 =
      TUIODP2 %>%
      replace(
        TUIODP2 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TUIODP3 =
      TUIODP3 %>%
      replace(
        TUIODP3 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TULAY =
      TULAY %>%
      replace(
        TULAY %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:5)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Retired"
          , "Disabled"
          , "Unable to work"
          )
      ) %>%
      forcats::fct_drop()
  , TULAY6M =
      TULAY6M %>%
      replace(
        TULAY6M %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TULAYAVR =
      TULAYAVR %>%
      replace(
        TULAYAVR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:3)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Own temporary illness"
          , "Going to school"
          , "Other"
          )
      ) %>%
      forcats::fct_drop()
  , TULAYDT =
      TULAYDT %>%
      replace(
        TULAYDT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:2)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          )
      ) %>%
      forcats::fct_drop()
  , TULK =
      TULK %>%
      replace(
        TULK %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:5)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Retired"
          , "Disabled"
          , "Unable to work"
          )
      ) %>%
      forcats::fct_drop()
  , TULKAVR =
      TULKAVR %>%
      replace(
        TULKAVR %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:4)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Waiting for new job to begin"
          , "Own temporary illness"
          , "Going to school"
          , "Other"
          )
      ) %>%
      forcats::fct_drop()
  , TULKDK1 =
      TULKDK1 %>%
      replace(
        TULKDK1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:13)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Checked union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Nothing"
          , "Other passive"
          )
      ) %>%
      forcats::fct_drop()
  , TULKDK2 =
      TULKDK2 %>%
      replace(
        TULKDK2 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Checked union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Other passive"
          , "No additional job search activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKDK3 =
      TULKDK3 %>%
      replace(
        TULKDK3 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted Employer Directly/Interview"
          , "Contacted Public Employment Agency"
          , "Contacted Private Employment Agency"
          , "Contacted Friends or Relatives"
          , "Contacted School/University Employment Center"
          , "Sent Out Resumes/Filled Out Applications"
          , "Check Union/Professional Registers"
          , "Placed or Answered Ads"
          , "Other Active"
          , "Looked at Ads"
          , "Attended Job Training Programs/Courses"
          , "Other Passive"
          , "No Additional Job Search Activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKDK4 =
      TULKDK4 %>%
      replace(
        TULKDK4 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted Employer Directly/Interview"
          , "Contacted Public Employment Agency"
          , "Contacted Private Employment Agency"
          , "Contacted Friends or Relatives"
          , "Contacted School/University Employment Center"
          , "Sent Out Resumes/Filled Out Applications"
          , "Check Union/Professional Registers"
          , "Placed or Answered Ads"
          , "Other Active"
          , "Looked at Ads"
          , "Attended Job Training Programs/Courses"
          , "Other Passive"
          , "No Additional Job Search Activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKM2 =
      TULKM2 %>%
      replace(
        TULKM2 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Checked union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Other passive"
          , "No additional job search activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKM3 =
      TULKM3 %>%
      replace(
        TULKM3 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Check union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Other passive"
          , "No additional job search activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKM4 =
      TULKM4 %>%
      replace(
        TULKM4 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Check union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Other passive"
          , "No additional job search activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKPS1 =
      TULKPS1 %>%
      replace(
        TULKPS1 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 12, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Checked union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Nothing"
          , "Other passive"
          , "No more job search activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKPS2 =
      TULKPS2 %>%
      replace(
        TULKPS2 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted employer directly/interview"
          , "Contacted public employment agency"
          , "Contacted private employment agency"
          , "Contacted friends or relatives"
          , "Contacted school/university employment center"
          , "Sent out resumes/filled out applications"
          , "Checked union/professional registers"
          , "Placed or answered ads"
          , "Other active"
          , "Looked at ads"
          , "Attended job training programs/courses"
          , "Other passive"
          , "No additional job search activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKPS3 =
      TULKPS3 %>%
      replace(
        TULKPS3 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted Employer Directly/Interview"
          , "Contacted Public Employment Agency"
          , "Contacted Private Employment Agency"
          , "Contacted Friends or Relatives"
          , "Contacted School/University Employment Center"
          , "Sent Out Resumes/Filled Out Applications"
          , "Check Union/Professional Registers"
          , "Placed or Answered Ads"
          , "Other Active"
          , "Looked at Ads"
          , "Attended Job Training Programs/Courses"
          , "Other Passive"
          , "No Additional Job Search Activities"
          )
      ) %>%
      forcats::fct_drop()
  , TULKPS4 =
      TULKPS4 %>%
      replace(
        TULKPS4 %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:11, 13, 97)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Contacted Employer Directly/Interview"
          , "Contacted Public Employment Agency"
          , "Contacted Private Employment Agency"
          , "Contacted Friends or Relatives"
          , "Contacted School/University Employment Center"
          , "Sent Out Resumes/Filled Out Applications"
          , "Check Union/Professional Registers"
          , "Placed or Answered Ads"
          , "Other Active"
          , "Looked at Ads"
          , "Attended Job Training Programs/Courses"
          , "Other Passive"
          , "No Additional Job Search Activities"
          )
      ) %>%
      forcats::fct_drop()
  , TURETOT =
      TURETOT %>%
      replace(
        TURETOT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:3)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Was not retired last time"
          )
      ) %>%
      forcats::fct_drop()
  , TUSPABS =
      TUSPABS %>%
      replace(
        TUSPABS %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:5)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Retired"
          , "Disabled"
          , "Unable to work"
          )
      ) %>%
      forcats::fct_drop()
  , TUSPUSFT =
      TUSPUSFT %>%
      replace(
        TUSPUSFT %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:4)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Hours vary"
          , "No longer has a job"
          )
      ) %>%
      forcats::fct_drop()
  , TUSPWK =
      TUSPWK %>%
      replace(
        TUSPWK %in% -1:-3
      , NA
      ) %>%
      factor(
        levels = c(-1:-3, 1:5)
      , labels =
          c(
            "Blank"
          , "Don't Know"
          , "Refused"
          , "Yes"
          , "No"
          , "Retired"
          , "Disabled"
          , "Unable to work"
          )
      ) %>%
      forcats::fct_drop()
  ) # mutate


# Label variables
labels_dat_atusresp_0321 <-
  tibble::tribble(
    ~Var          , ~Label
  , "TEABSRSN"    , "Edited: what was the main reason you were absent from your job last week?"
  , "TEERN"       , "Edited: total weekly overtime earnings (2 implied decimals)"
  , "TEERNH1O"    , "Edited: excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)"
  , "TEERNH2"     , "Edited: excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)"
  , "TEERNHRO"    , "Edited: how many hours do you usually work per week at this rate?"
  , "TEERNHRY"    , "Edited: hourly/non-hourly status"
  , "TEERNPER"    , "Edited: for your main job, what is the easiest way for you to report your total earnings before taxes or other deductions: hourly, weekly, annually, or some other way?"
  , "TEERNRT"     , "Edited: even though you told me it is easier to report your earnings another way, are you paid at an hourly rate on this job?"
  , "TEERNUOT"    , "Edited: do you usually receive overtime pay, tips, or commissions at your main job?"
  , "TEERNWKP"    , "Edited: how many weeks a year do you get paid?"
  , "TEHRFTPT"    , "Edited: do you usually work more than 35 hours per week at your job(s)/family business?"
  , "TEHRUSL1"    , "Edited: how many hours per week do you usually work at your main job?"
  , "TEHRUSL2"    , "Edited: how many hours per week do you usually work at your other job(s)?"
  , "TEHRUSLT"    , "Edited: total hours usually worked per week (sum of TEHRUSL1 and TEHRUSL2)"
  , "TEIO1COW"    , "Edited: individual class of worker code (main job)"
  , "TEIO1ICD"    , "Edited: industry code (main job)"
  , "TEIO1OCD"    , "Edited: occupation code (main job)"
  , "TELAYAVL"    , "Edited: could you have returned to work in the last seven days if you had been recalled?"
  , "TELAYLK"     , "Edited: even though you expect to be called back to work, have you been looking for work during the last four weeks?"
  , "TELFS"       , "Edited: labor force status"
  , "TELKAVL"     , "Edited: could you have started a job in the last seven days if one had been offered?"
  , "TELKM1"      , "Edited: what are all of the things you have done to find work during the last 4 weeks? (first method)"
  , "TEMJOT"      , "Edited: in the last seven days did you have more than one job?"
  , "TERET1"      , "Edited: do you currently want a job, either full or part time?"
  , "TESCHENR"    , "Edited: are you enrolled in high school, college, or university?"
  , "TESCHFT"     , "Edited: are you enrolled as a full-time or part-time student?"
  , "TESCHLVL"    , "Edited: would that be high school, college, or university?"
  , "TESPEMPNOT"  , "Edited: employment status of spouse or unmarried partner"
  , "TESPUHRS"    , "Edited: usual hours of work of spouse or unmarried partner"
  , "TRCHILDNUM"  , "Number of household children < 18"
  , "TRDPFTPT"    , "Full time or part time employment status of respondent"
  , "TRDTIND1"    , "Detailed industry recode (main job)"
  , "TRDTOCC1"    , "Detailed occupation recode (main job)"
  , "TREMODR"     , "Eating and Health Module respondent"
  , "TRERNHLY"    , "Hourly earnings (2 implied decimals)"
  , "TRERNUPD"    , "Earnings update flag"
  , "TRERNWA"     , "Weekly earnings (2 implied decimals)"
  , "TRHERNAL"    , "TRERNHLY: allocation flag"
  , "TRHHCHILD"   , "Presence of household children < 18"
  , "TRHOLIDAY"   , "Flag to indicate if diary day was a holiday"
  , "TRIMIND1"    , "Intermediate industry recode (main job)"
  , "TRLVMODR"    , "Leave module respondent"
  , "TRMJIND1"    , "Major industry recode (main job)"
  , "TRMJOCC1"    , "Major occupation recode (main job)"
  , "TRMJOCGR"    , "Major occupation category (main job)"
  , "TRNHHCHILD"  , "Presence of own non-household child < 18"
  , "TRNUMHOU"    , "Number of people living in respondent's household"
  , "TROHHCHILD"  , "Presence of own household children < 18"
  , "TRSPFTPT"    , "Full time or part time employment status of spouse or unmarried partner"
  , "TRSPPRES"    , "Presence of the respondent's spouse or unmarried partner in the household"
  , "TRTALONE"    , "Total time respondent spent alone (in minutes)"
  , "TRTALONE_WK" , "Total work- and nonwork-related time respondent spent alone (in minutes)"
  , "TRTCC"       , "Total time spent during diary day providing secondary childcare for household and own nonhousehold children < 13 (in minutes)"
  , "TRTCCC"      , "Total nonwork-related time respondent spent with customers, clients, and coworkers (in minutes)"
  , "TRTCCC_WK"   , "Total work- and nonwork-related time respondent spent with customers, clients, and coworkers (in minutes)"
  , "TRTCCTOT"    , "Total time spent during diary day providing secondary childcare for all children < 13 (in minutes)"
  , "TRTCHILD"    , "Total time respondent spent with household or nonhousehold children < 18 (in minutes)"
  , "TRTCOC"      , "Total time spent during diary day providing secondary childcare for nonown, nonhousehold children < 13 (in minutes)"
  , "TRTEC"       , "Total time spent providing eldercare (in minutes)"
  , "TRTFAMILY"   , "Total time respondent spent with family members (in minutes)"
  , "TRTFRIEND"   , "Total time respondent spent with friends (in minutes)"
  , "TRTHH"       , "Total time spent during diary day providing secondary childcare for household children < 13 (in minutes)"
  , "TRTHHFAMILY" , "Total time respondent spent with household family members (in minutes)"
  , "TRTNOCHILD"  , "Total time respondent spent with nonown children < 18 (in minutes)"
  , "TRTNOHH"     , "Total time spent during diary day providing secondary childcare for nonown household children < 13 (in minutes)"
  , "TRTO"        , "Total time spent during diary day providing secondary childcare for own children < 13 (in minutes)"
  , "TRTOHH"      , "Total time spent during diary day providing secondary childcare for own household children < 13 (in minutes)"
  , "TRTOHHCHILD" , "Total time respondent spent with own household children < 18 (in minutes)"
  , "TRTONHH"     , "Total time spent during diary day providing secondary childcare for own nonhousehold children < 13 (in minutes)"
  , "TRTONHHCHILD", "Total time respondent spent with own nonhousehold children < 18 (in minutes)"
  , "TRTSPONLY"   , "Total time respondent spent with spouse only (in minutes)"
  , "TRTSPOUSE"   , "Total time respondent spent with spouse (others may be present) (in minutes)"
  , "TRTUNMPART"  , "Total time respondent spent with unmarried partner (others may be present) (in minutes)"
  , "TRWBMODR"    , "Well-Being Module respondent"
  , "TRWERNAL"    , "TRERNWA: allocation flag"
  , "TRYHHCHILD"  , "Age of youngest household child < 18"
  , "TTHR"        , "Hourly pay topcode flag"
  , "TTOT"        , "Overtime amount topcode flag"
  , "TTWK"        , "Weekly earnings topcode flag"
  , "TUABSOT"     , "In the last seven days, did you have a job either full or part time?"
  , "TUBUS"       , "Does anyone in the household own a business or a farm?"
  , "TUBUS1"      , "In the last seven days, did you do any unpaid work in the family business or farm?"
  , "TUBUS2OT"    , "Do you receive payments or profits from the business?"
  , "TUBUSL1"     , "TULINENO of farm or business owner (first owner)"
  , "TUBUSL2"     , "TULINENO of farm or business owner (second owner)"
  , "TUBUSL3"     , "TULINENO of farm or business owner (third owner)"
  , "TUBUSL4"     , "TULINENO of farm or business owner (fourth owner)"
  , "TUCASEID"    , "ATUS Case ID (14-digit identifier)"
  , "TUCC2"       , "Time first household child < 13 woke up"
  , "TUCC4"       , "Time last household child < 13 went to bed"
  , "TUCC9"       , "Are the non-own, non-household children you cared for in TUCC8 related to you?"
  , "TUDIARYDATE" , "Date of diary day (date about which the respondent was interviewed)"
  , "TUDIARYDAY"  , "Day of the week of diary day (day of the week about which the respondent was interviewed)"
  , "TUDIS"       , "Last time we spoke to someone in this household you were reported to have a disability. Does your disability prevent you from doing any kind of work for the next six months?"
  , "TUDIS1"      , "Does your disability prevent you from accepting any kind of work during the next six months?"
  , "TUDIS2"      , "Do you have a disability that prevents you from accepting any kind of work during the next six months?"
  , "TUECYTD"     , "Did you provide any eldercare or assistance yesterday?"
  , "TUELDER"     , "Not including financial assistance or help you provided as part of your paid job, since the first of [REF_MONTH], have you provided any care or assistance for an adult who needed help because of a condition related to aging?"
  , "TUELFREQ"    , "How often did you provide this care?"
  , "TUELNUM"     , "Since the first of [REF_MONTH], how many people have you provided this care to?"
  , "TUFNWGTP"    , "ATUS final weight"
  , "TUFWK"       , "In the last seven days did you do any work for pay or profit?"
  , "TUIO1MFG"    , "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else? (main job)"
  , "TUIODP1"     , "Last time we spoke to someone in this household, you were reported to work for (employer's name). Do you still work for (employer's name)? (main job)"
  , "TUIODP2"     , "Have the usual activities and duties of your job changed since (month of CPS interview)? (main job)"
  , "TUIODP3"     , "Last time we spoke to someone in this household, you were reported as (occupation) and your usual duties were (activities). Is this an accurate description of your current job? (main job)"
  , "TULAY"       , "During the last seven days were you on layoff from your job?"
  , "TULAY6M"     , "Have you been given any indication that you will be recalled to work within the next 6 months?"
  , "TULAYAVR"    , "Why could you not have started a job in the last week?"
  , "TULAYDT"     , "Has your employer given you a date to return to work? (to layoff job) "
  , "TULINENO"    , "ATUS person line number"
  , "TULK"        , "Have you been doing anything to find work during the last four weeks?"
  , "TULKAVR"     , "Why could you not have started a job last week?"
  , "TULKDK1"     , "You said you have been trying to find work. How did you go about looking? (first method)"
  , "TULKDK2"     , "TULKDK1 text: (second method)"
  , "TULKDK3"     , "TULKDK1 text: (third method)"
  , "TULKDK4"     , "TULKDK1 text: (fourth method)"
  , "TULKM2"      , "What are all of the things you have done to find work during the last 4 weeks? (second method)"
  , "TULKM3"      , "TULKM2 text: (third method)"
  , "TULKM4"      , "TULKM2 text: (fourth method)"
  , "TULKM5"      , "TULKM2 text: (fifth method)"
  , "TULKM6"      , "TULKM2 text: (sixth method)"
  , "TULKPS1"     , "Can you tell me more about what you did to search for work? (first method)"
  , "TULKPS2"     , "TULKPS1 text: (second method)"
  , "TULKPS3"     , "TULKPS1 text: (third method)"
  , "TULKPS4"     , "TULKPS1 text: (fourth method)"
  , "TUMONTH"     , "Month of diary day (month of day about which ATUS respondent was interviewed)"
  , "TURETOT"     , "The last time we spoke to someone in this household you were reported to be retired. Are you still retired?"
  , "TUSPABS"     , "In the last seven days, did your spouse or unmarried partner have a job either full or part time?"
  , "TUSPUSFT"    , "Does your spouse or unmarried partner usually work 35 hours or more per week?"
  , "TUSPWK"      , "In the last seven days, did your spouse or unmarried partner do any work for pay or profit?"
  , "TUYEAR"      , "Year of diary day (year of day about which respondent was interviewed)"
  , "TU20FWGT"    , "ATUS final weight with method used for 2020 pandemic"
  )

# Apply labels
for (i_var in seq_along(labels_dat_atusresp_0321[[ "Var" ]])) {
  labelled::var_label(dat_atusresp_0321[[ labels_dat_atusresp_0321[[ "Var" ]][i_var] ]]) <-
    labels_dat_atusresp_0321[[ "Label" ]][i_var]
}
