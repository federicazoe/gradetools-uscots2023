
# Install necessary packages if not installled
devtools::install_github("federicazoe/gradetools")
install.packages("here")
install.packages("readr")

# Load gradetools packages
library(gradetools)


# Preparing materials for grading -----------------------------------------

# Specify student_identifiers
roster <- data.frame(student_identifier = c("BaronPoisson", "sergent-gamma", "student_T"))

# Specify location to save roster
roster_location <- "practice-roster.csv"

# Create minimal roster
readr::write_csv(roster, roster_location)

# Specify location to save rubric
rubric_location <- "practice-rubric.csv"

# Create rubric template
create_rubric_template(rubric_path = rubric_location)


# Grading function call ---------------------------------------------------

# Specify where to save the grading progress log
grading_progress_log_location <- 
  
# Specify where to save the final grade sheet
final_grade_sheet_location <- 

# Provide one student's assignment and feedback file locations and their identifier
assist_grading(
  rubric_path = rubric_location, 
  roster_path = roster_location, 
  grading_progress_log_path = grading_progress_log_location, 
  final_grade_sheet_path = final_grade_sheet_location, 
  example_assignment_path = , 
  example_feedback_path = , 
  example_student_identifier = 
)
