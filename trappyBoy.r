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


#for all images in the working folder using the camtrapR package to create station folder
camtrapR::createStationFolders("C:/Users/endoz/Documents/workinDir/")
