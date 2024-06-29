# List of packages to check and install
packages <- c("camtrapR",
             "exiftoolr",
             "dplyr", 
             "openxlsx"
             )

# Check if packages are installed
missing_packages <- packages[
!sapply(packages,
function(x) requireNamespace(x, quietly = TRUE))
]

# Install missing packages
if (length(missing_packages) > 0) {
    install.packages(missing_packages) # nolint
}

# Load packages
lapply(packages, library, character.only = TRUE)

# Set working directory
setwd("C:/Users/endoz/Documents/workinDir/")


# Load camera trap data from a XLSX
camera_trap_data <- read_camtrap_xlsx("camera_trap_data.xlsx")

#load the camtrapR example data
data("detection_history")
