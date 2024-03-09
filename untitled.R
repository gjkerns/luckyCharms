

library(fpp3)


head(Lucky)

Lucky |> as_tsibble(index = bowl, key = box) -> Lucky_ts


library(scales)
#colors <- c('blue', 'grey50', 'red', 'grey50', 'grey50','grey50')
colors <- c(hue_pal()(6)[1], 'grey50', hue_pal()(6)[3], 'grey50', 'grey50','grey50')
sizes <- c(2.5, 1, 2.5, 1, 1, 1)
alphas <- c(1, 0.4, 1, 0.4, 0.4, 0.4)


Lucky |> ggplot(aes(x = Bowl, y = Totcharms, colour = Box, size = Box, group = Box)) +
  geom_line(aes(alpha = Box)) +
  scale_color_manual(name = "Box", values = colors) +
  scale_size_manual(values = sizes, guide = "none") +
  scale_alpha_manual(values = alphas, guide = "none") +
  labs(x = "Bowl", y = "# Charms", size = "Box") +
  guides(color = guide_legend(override.aes = list(linewidth = 3)))



sizes <- c(2.5, 1, 2.5, 1, 1, 1)
alphas <- c(1, 0.2, 1, 0.2, 0.2, 0.2)
Lucky |> ggplot(aes(x = Bowl, y = Totcharms, colour = Box, size = Box, group = Box)) +
  geom_line(aes(alpha = Box)) +
  scale_size_manual(values = sizes, guide = "none") +
  scale_alpha_manual(values = alphas, guide = "none") +
  labs(y = "# Charms") +
  guides(color = guide_legend(override.aes = list(linewidth = 2.5)))



Lucky |> ggplot(aes(x = Bowl, y = Totcharms)) +
  geom_line(aes(colour = Box, linewidth = Box, alpha = Box)) +
  scale_discrete_manual("linewidth", values = sizes) +
  scale_alpha_manual(values = alphas, guide = "none")




library(ggplot2)

ggplot(economics_long, aes(date, value01)) +
  geom_line(
    aes(colour = variable, linewidth = variable)
  ) +
  scale_discrete_manual("linewidth", values = seq(0.1, 3, length.out = 5))










```{r}
library(tidyverse)    
# # Data in wide format
# df_wide <- data.frame(
#   Horizons = seq(1,10,1),
#   Country1 = c(2.5, 2.3, 2.2, 2.2, 2.1, 2.0, 1.7, 1.8, 1.7, 1.6),
#   Country2 = c(3.5, 3.3, 3.2, 3.2, 3.1, 3.0, 3.7, 3.8, 3.7, 3.6),
#   Country3 = c(1.5, 1.3, 1.2, 1.2, 1.1, 1.0, 0.7, 0.8, 0.7, 0.6)
# )
# 
# # Convert to long format
# df_long <- df_wide %>%
#   gather(key = "variable", value = "value", -Horizons)
# 
# colors <- c(Country1 = "red", Country2 = "grey50", Country3 = "grey50")
# sizes <- c(Country1 = 2, Country2 = .5, Country3 = .5)
# # Plot the lines
# plotstov <- ggplot(df_long, aes(x = Horizons, y = value)) + 
#   geom_line(aes(colour = variable, size = variable, group = variable)) +
#   scale_color_manual(values = colors) +
#   scale_size_manual(values = sizes) +
#   theme_bw()
# plotstov
```


