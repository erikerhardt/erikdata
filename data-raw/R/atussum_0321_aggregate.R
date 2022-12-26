# Aggregating categories
# Prof. Erik Erhardt
# University of New Mexico
# 12/18/2022

# ATUS 2003-2021 Activity coding lexicon
#   <https://www.bls.gov/tus/lexicons/lexiconnoex0321.pdf>


# Label variables
labels_dat_atussum_0321_agg_0 <-
  tibble::tribble(
    ~Var          , ~Label
  , "t01"     , "Personal Care Activities"
  , "t02"     , "Household Activities"
  , "t03"     , "Caring For & Helping Household (HH) Members"
  , "t04"     , "Caring For & Helping Nonhousehold (NonHH) Members"
  , "t05"     , "Work & Work-Related Activities"
  , "t06"     , "Education"
  , "t10"     , "Government Services & Civic Obligations"
  , "t11"     , "Eating and Drinking"
  , "t12"     , "Socializing, Relaxing, and Leisure"
  , "t13"     , "Sports, Exercise, & Recreation"
  , "t14"     , "Religious and Spiritual Activities"
  , "t15"     , "Volunteer Activities"
  , "t16"     , "Telephone Calls"
  , "t18"     , "Traveling"
  , "t50"     , "Data Codes"
  )

labels_dat_atussum_0321_agg_1 <-
  tibble::tribble(
    ~Var          , ~Label
  , "t0101"   , "Sleeping"
  , "t0102"   , "Grooming"
  , "t0103"   , "Health-related self care"
  , "t0104"   , "Personal Activities"
  , "t0105"   , "Personal Care Emergencies"
  , "t0199"   , "Personal care, n.e.c.*"
  , "t0201"   , "Housework"
  , "t0202"   , "Food & Drink Preparation, Presentation, & Clean-up"
  , "t0203"   , "Interior Maintenance, Repair & Decoration"
  , "t0204"   , "Exterior Maintenance, Repair & Decoration"
  , "t0205"   , "Lawn, Garden, and Houseplants"
  , "t0206"   , "Animals and Pets"
  , "t0207"   , "Vehicles"
  , "t0208"   , "Appliances, Tools, and Toys"
  , "t0209"   , "Household Management"
  , "t0299"   , "Household activities, n.e.c.*"
  , "t0301"   , "Caring For & Helping HH Children"
  , "t0302"   , "Activities Related to HH Children's Education"
  , "t0303"   , "Activities Related to HH Children's Health"
  , "t0304"   , "Caring for Household Adults"
  , "t0305"   , "Helping Household Adults"
  , "t0399"   , "Caring For & Helping NonHH Members"
  , "t0401"   , "Caring for & Helping Nonhousehold Children"
  , "t0402"   , "Activities Related to Nonhh Children's Education"
  , "t0403"   , "Activities Related to Nonhh Children's Health"
  , "t0404"   , "Caring For Nonhousehold Adults"
  , "t0405"   , "Helping Nonhousehold Adults"
  , "t0499"   , "Caring For & Helping Nonhousehold Adults, n.e.c.*"
  , "t0501"   , "Working"
  , "t0502"   , "Work-Related Activities"
  , "t0503"   , "Other Income-Generating Activities"
  , "t0504"   , "Job Search and Interviewing"
  , "t0599"   , "Work and Work-Related Activities, n.e.c.*"
  , "t0601"   , "Taking Class"
  , "t0602"   , "Extracurricular School Activities (Except Sports)"
  , "t0603"   , "Research/Homework"
  , "t0604"   , "Registration/Administrative activities"
  , "t0699"   , "Education, n.e.c.*"
  , "t0701"   , "Shopping (Store, Telephone, Internet)"
  , "t0702"   , "Researching Purchases"
  , "t0703"   , "Security Procedures Related to Consumer Purchases"
  , "t0799"   , "Consumer Purchases, n.e.c.*"
  , "t0801"   , "Professional & Personal Care Services"
  , "t0802"   , "Financial Services and Banking"
  , "t0803"   , "Legal Services"
  , "t0804"   , "Medical and Care Services"
  , "t0805"   , "Personal Care Services"
  , "t0806"   , "Real Estate"
  , "t0807"   , "Veterinary Services (excluding grooming)"
  , "t0808"   , "Security Procedures Related to Professional/Personal Services"
  , "t0899"   , "Professional and Personal Services, n.e.c.*"
  , "t0901"   , "Household Services (not done by self)"
  , "t0902"   , "Home Maintenance/Repair/Decor/Construction (not done by self)"
  , "t0903"   , "Pet Services (not done by self, not vet)"
  , "t0904"   , "Lawn & Garden Services (not done by self)"
  , "t0905"   , "Vehicle Maintenance & Repair Services (not done by self)"
  , "t0999"   , "Household Services, n.e.c.*"
  , "t1001"   , "Using Government Services"
  , "t1002"   , "Civic Obligations & Participation"
  , "t1003"   , "Waiting Associated w/ Government Services or Civic Obligations"
  , "t1004"   , "Security Procedures Related to Government Services or Civic Obligations"
  , "t1099"   , "Government services, n.e.c.*"
  , "t1101"   , "Eating and Drinking"
  , "t1102"   , "Waiting associated with Eating & Drinking"
  , "t1199"   , "Eating and Drinking, n.e.c.*"
  , "t1201"   , "Socializing and Communicating"
  , "t1202"   , "Attending or Hosting Social Events"
  , "t1203"   , "Relaxing and Leisure"
  , "t1204"   , "Arts and Entertainment (other than sports)"
  , "t1205"   , "Waiting associated with Socializing, Relaxing, and Leisure"
  , "t1299"   , "Socializing, Relaxing, and Leisure, n.e.c.*"
  , "t1301"   , "Participating in Sports, Exercise, and Recreation"
  , "t1302"   , "Attending Sports/Recreational Events"
  , "t1303"   , "Waiting Associated with Sports, Exercise, & Recreation"
  , "t1304"   , "Security Procedures Related to Sports, Exercise, & Recreation"
  , "t1399"   , "Sports, Exercise, and Recreation, n.e.c.*"
  , "t1401"   , "Religious/Spiritual Practices"
  , "t1499"   , "Religious and Spiritual Practices, n.e.c.*"
  , "t1501"   , "Administrative & Support Activities"
  , "t1502"   , "Social Service & Care Activities (Except Medical)"
  , "t1503"   , "Indoor & Outdoor Maintenance, Building, & Clean-up Activities"
  , "t1504"   , "Participating in Performance & Cultural Activities"
  , "t1505"   , "Attending Meetings, Conferences, & Training"
  , "t1506"   , "Public Health & Safety Activities"
  , "t1599"   , "Volunteer Activities, n.e.c.*"
  , "t1601"   , "Telephone Calls (to or from)"
  , "t1699"   , "Telephone Calls, n.e.c.*"
  , "t1801"   , "Travel Related to Personal Care"
  , "t1802"   , "Travel Related to Household Activities"
  , "t1803"   , "Travel Related to Caring For & Helping Household Members"
  , "t1804"   , "Travel Related to Caring For & Helping Nonhousehold Members"
  , "t1805"   , "Travel Related to Work"
  , "t1806"   , "Travel Related to Education"
  , "t1807"   , "Travel Related to Consumer Purchases"
  , "t1808"   , "Travel Related to Using Professional and Personal Care Services"
  , "t1809"   , "Travel Related to Using Household Services"
  , "t1810"   , "Travel Related to Using Government Services & Civic Obligations"
  , "t1811"   , "Travel Related to Eating and Drinking"
  , "t1812"   , "Travel Related to Socializing, Relaxing, and Leisure"
  , "t1813"   , "Travel Related to Sports, Exercise, and Recreation"
  , "t1814"   , "Travel Related to Religious/Spiritual Activities"
  , "t1815"   , "Travel Related to Volunteer Activities"
  , "t1816"   , "Travel Related to Telephone Calls"
  , "t1818"   , "Security Procedures Related to Traveling"
  , "t1899"   , "Traveling, n.e.c.*"
  , "t5001"   , "Unable to Code"
  , "t5099"   , "Data codes, n.e.c.*"
  )

## Major categories

dat_atussum_0321_agg_0 <-
  dat_atussum_0321 %>%
  dplyr::select(
    TUCASEID
  )

# Apply labels
for (i_var in seq_along(labels_dat_atussum_0321_agg_0[[ "Var" ]])) {
  ## i_var = 1

  var_prefix <- labels_dat_atussum_0321_agg_0[[ "Var" ]][i_var]

  dat_atussum_0321_agg_0[[ var_prefix ]] <-
    dat_atussum_0321 %>%
    dplyr::select(
      tidyselect::starts_with(var_prefix)
    ) %>%
    rowSums()

  labelled::var_label(dat_atussum_0321_agg_0[[ labels_dat_atussum_0321_agg_0[[ "Var" ]][i_var] ]]) <-
    labels_dat_atussum_0321_agg_0[[ "Label" ]][i_var]
}


## First and second-tier categories

dat_atussum_0321_agg_1 <-
  dat_atussum_0321 %>%
  dplyr::select(
    TUCASEID
  )

# Apply labels
for (i_var in seq_along(labels_dat_atussum_0321_agg_1[[ "Var" ]])) {
  ## i_var = 1

  var_prefix <- labels_dat_atussum_0321_agg_1[[ "Var" ]][i_var]

  dat_atussum_0321_agg_1[[ var_prefix ]] <-
    dat_atussum_0321 %>%
    dplyr::select(
      tidyselect::starts_with(var_prefix)
    ) %>%
    rowSums()

  labelled::var_label(dat_atussum_0321_agg_1[[ labels_dat_atussum_0321_agg_1[[ "Var" ]][i_var] ]]) <-
    labels_dat_atussum_0321_agg_1[[ "Label" ]][i_var]
}
