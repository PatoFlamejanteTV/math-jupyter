install.packages("scatterplot3d")  # Install the scatterplot3d package
library(scatterplot3d)            # Load the package after installation

###################################################################

# prompt: plot with 1D, 2D, 3D, 4D examples

# Load necessary libraries
library(ggplot2)

# 1D Data: Histogram
data_1d <- rnorm(100)  # Sample data
ggplot(data.frame(data_1d), aes(x = data_1d)) +
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "1D Data: Histogram", x = "Value", y = "Frequency")


# 2D Data: Scatter Plot
data_2d <- data.frame(x = rnorm(100), y = rnorm(100))
ggplot(data_2d, aes(x = x, y = y)) +
  geom_point(color = "coral") +
  labs(title = "2D Data: Scatter Plot", x = "X", y = "Y")

# 3D Data: Scatter Plot with Color
data_3d <- data.frame(x = rnorm(100), y = rnorm(100), z = rnorm(100))

# Install and load the scatterplot3d package 
#install.packages("scatterplot3d") # Install if not already installed
library(scatterplot3d)            # Load the package

# Create a color ramp to map 'z' values to colors
colors <- colorRampPalette(c("blue", "red"))(length(data_3d$z)) 
# Assign colors based on 'z' values
color_indices <- cut(data_3d$z, breaks = length(colors), labels = FALSE)
point_colors <- colors[color_indices]

scatterplot3d(data_3d$x, data_3d$y, data_3d$z, color = point_colors, pch = 16,
              main = "3D Data: Scatter Plot", xlab = "X", ylab = "Y", zlab = "Z")


# 4D Data: Scatter Plot with Color and Size
data_4d <- data.frame(x = rnorm(100), y = rnorm(100), z = rnorm(100), w = rnorm(100))

# Use color and size to represent the 4th dimension (w)
ggplot(data_4d, aes(x = x, y = y, color = z, size = w)) + 
  geom_point() +
  labs(title = "4D Data Representation (using color and size)",
       x = "X", y = "Y", color = "Z", size = "W")
