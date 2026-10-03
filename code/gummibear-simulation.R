
## get all combinations
col <- c("D", "L", "G", "W", "O", "Y")

grid_tbl <- expand_grid(a = col, col, col, col) |> 
  rowwise() |> 
  mutate(tab = list(table(c_across(a:last_col()))),
         tab_len = length(foo))

tabyl(grid_tbl$tab_len)

grid_tbl <- CJ(a = col, b = col, c = col, 
               d = col, e = col, f = col,
               g = col, h = col) |> 
  rowwise() |> 
  mutate(tab = list(table(c_across(a:last_col()))),
         tab_len = length(foo))

tabyl(grid_tbl$tab_len)

## simulate the bags
n_sim <- 1e7

simulated_lst <- map(1:n_sim, \(...) {
  sample(col, 12, replace = TRUE) 
})

simulated_vec <- simulated_lst |> 
  map(unique) |> 
  map(length) |>
  as_vector()

simulated_vec |> 
  janitor::tabyl()