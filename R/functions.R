plot_tree <- function(phy, file) {
  pdf(file=file, width = 20, height = 20)
  plot(phy)
  plot(phy, type="fan")
  dev.off()
}