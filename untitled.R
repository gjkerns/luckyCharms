

library(fpp3)


head(Lucky)

Lucky |> as_tsibble(index = bowl, key = box) -> Lucky_ts

Lucky_ts |> ggplot(aes(x = bowl, y = totcharms, color = box)) +
  geom_line() +
  labs(x = "Bowl", y = "# Charms", color = "Box")
