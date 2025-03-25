library(DBI)
library(duckdb)
library(here)
library(usethis)
library(dplyr)
library(dbplyr)
library(CDMConnector)
library(PatientProfiles)
library(IncidencePrevalence)
library(CohortConstructor)
library(DrugUtilisation)
library(OmopSketch)
library(visOmopResults)
library(CohortCharacteristics)

db <- dbConnect(duckdb(), dbdir = eunomiaDir())
cdm <- cdmFromCon(con = db, cdmSchema = "main", writeSchema = "main")
cdm$my_cohort <- conceptCohort(
  cdm = cdm,
  name = "my_cohort",
  conceptSet = list('chronic_sinusitis' = 257012L)
)
settings(cdm$my_cohort)
