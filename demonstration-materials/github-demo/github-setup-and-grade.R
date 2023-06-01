
library(gradetools)
library(ghclass)

# Prerequisites -----------------------------------------------------------
# 0. You have set up your GitHub token access
# 1.1 You have created a GitHub organization for your class
# 1.2 You have created a repo for week 1 assignments
# See notes at the end when trying to reproduce this example


# 1.3 Class setup ---------------------------------------------------------
# Invite students to your organization
org_invite(org = "example-course", 
           user = c("CatalinaMedina", "felipe-jones"))


# 2.1 Add assignment to week-1 repo ---------------------------------------
# Set repo as template
repo_set_template("example-course/week01-data-viz")
# Add quiz file
repo_add_file(
  org_repos("example-course","week01-data-viz"),
  message = "Add quiz on data visualization",
  file = here::here("demonstration-materials/github-demo/quiz01-data-viz.Rmd")
)


# 2.2 Create week-1 repo for each student ---------------------------------
org_create_assignment(
  org = "example-course",
  user = c("CatalinaMedina", "felipe-jones"),
  repo = paste0("week01-data-viz-", c("CatalinaMedina", "felipe-jones")),
  source_repo = "example-course/week01-data-viz",
  private = TRUE
)


# 3.1 Collect students work -----------------------------------------------
local_repo_clone(
  repo = org_repos("example-course", "week01-data-viz"),
  local_path = "demonstration-materials/github-demo/week01-data-viz"
)


# 3.2 Create note of issue while grading ----------------------------------
setwd(here::here("demonstration-materials", "github-demo"))
assist_advanced_grading(
  rubric_path = "rubric.csv",
  roster_path = "roster.csv",
  grading_progress_log_path = "grade-log.csv",
  final_grade_sheet_path = "final-gradesheet.csv",
  example_assignment_path = paste("week01-data-viz",
                                  "week01-data-viz-CatalinaMedina",
                                  "quiz01-data-viz.qmd",
                                  sep = "/"),
  example_feedback_path = paste("week01-data-viz",
                                "week01-data-viz-CatalinaMedina",
                                "quiz01-feedback.Rmd",
                                sep = "/"),
  example_student_identifier = "CatalinaMedina", 
  github_issues = TRUE
)


# 3.3 and 3.4 Create issues and push feedback -----------------------------
push_to_github(
  grading_progress_log_path = here::here("demonstration-materials", 
                                         "github-demo", 
                                         "grade-log.csv"),
  class_github_name = "example-course",
  example_identifier = "CatalinaMedina",
  example_github_repo = "week01-data-viz-CatalinaMedina",
  push_feedback = TRUE,
  create_issues = TRUE
)


# Notes -------------------------------------------------------------------

# 1.3: here you need to replace "example-course" with the name of 
#      your organization and you need to replace "CatalinaMedina" and 
#      "felipe-jones" with your students' GitHub usernames

# 2.2: your students will need to have accepted the invitation they received
#      for you to be able to create repos for them
