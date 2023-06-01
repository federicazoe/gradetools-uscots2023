
# Install and load gradetools ---------------------------------------------
# devtools::install_github("federicazoe/gradetools")
library(gradetools)

library(here)


# Grade Quiz 1 ------------------------------------------------------------
assist_grading(
  rubric_path = here("demonstration-materials", "main-demo", "rubric.csv"), 
  roster_path = here("demonstration-materials", "main-demo", "roster.csv"), 
  grading_progress_log_path = here("demonstration-materials", "main-demo", "grading-progress-log.csv"), 
  final_grade_sheet_path = here("demonstration-materials", "main-demo", "quiz01-final-grade-sheet.csv"), 
  example_student_identifier = "sergent-gamma",
  example_assignment_path = here("demonstration-materials", "main-demo", "quiz01/quiz01-sergent-gamma.Rmd"), 
  example_feedback_path = here("demonstration-materials", "main-demo", "quiz01/quiz01-feedback-sergent-gamma.html")
)
