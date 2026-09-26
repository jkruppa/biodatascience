
## get all combinations
col <- c("D", "L", "G", "W", "O", "Y")

grid_tbl <- expand_grid(a = col, col, col, col) |> 
  rowwise() |> 
  mutate(foo = list(table(c_across(a:last_col()))),
         bar = length(foo))

tabyl(grid_tbl$bar)

grid_tbl <- CJ(a = col, b = col, c = col, 
               d = col, e = col, f = col,
               g = col, h = col, i = col) |> 
  rowwise() |> 
  mutate(foo = list(table(c_across(a:last_col()))),
         bar = length(foo))

tabyl(grid_tbl$bar)

## simulate the bags
n_sim <- 1e7

simulated_lst <- map(1:n_sim, \(...) {
  sample(c("darkred", "green", 
           "white", "lightred", 
           "yellow", "orange"), 12, replace = TRUE) 
})

simulated_vec <- simulated_lst |> 
  map(unique) |> 
  map(length) |>
  as_vector()

simulated_vec |> 
  janitor::tabyl()