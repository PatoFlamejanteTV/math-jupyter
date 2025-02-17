# prompt: plot with sin/cos/tan examples

library(ggplot2)

# Create a sequence of x-values
x <- seq(-2*pi, 2*pi, length.out = 100)

# Create a data frame with sin, cos, and tan values
df <- data.frame(x = x,
                 sin = sin(x),
                 cos = cos(x),
                 tan = tan(x))

# Plot sin(x)
ggplot(df, aes(x = x, y = sin)) +
  geom_line(color = "blue") +
  labs(title = "Sine Function", x = "x", y = "sin(x)")


# Plot cos(x)
ggplot(df, aes(x = x, y = cos)) +
  geom_line(color = "red") +
  labs(title = "Cosine Function", x = "x", y = "cos(x)")

# Plot tan(x)
ggplot(df, aes(x = x, y = tan)) +
  geom_line(color = "green") +
  labs(title = "Tangent Function", x = "x", y = "tan(x)")


# Combined plot

ggplot() +
  geom_line(data = df, aes(x = x, y = sin, color = "sin(x)"), size=1) +
  geom_line(data = df, aes(x = x, y = cos, color = "cos(x)"), size=1) +
  geom_line(data = df, aes(x = x, y = tan, color = "tan(x)"), size=1) +
  labs(title = "Sine, Cosine, and Tangent Functions", x = "x", y = "y", color = "Function") +
  scale_color_manual(values = c("sin(x)" = "blue", "cos(x)" = "red", "tan(x)" = "green")) +
  theme_bw()
