###italy
bins_scale = italy_bins$june_25

ggplot(aes(x = as_date(date), y = y), data = italy_reg) +
  geom_point(shape =  4) +
  scale_y_continuous(trans='log10', 
                     limits = c(1, max(italy_bins)), #max(bins)
                     breaks = c(1, bins_scale),
                     labels = c(1, bins_scale),
                     minor_breaks = NULL) +
  scale_x_date(limits = c(ymd(min(italy_reg$date)), cutoff_date[3])) +
  ggtitle("ITALY") +
  ###April 25
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=0, yend=italy_bins$april_25[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=italy_bins$april_25[1], yend=italy_bins$april_25[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=italy_bins$april_25[2], yend=italy_bins$april_25[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=italy_bins$april_25[3], yend=italy_bins$april_25[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=italy_bins$april_25[4], yend=max(italy_bins)), color = 'black') +
  ###May 25
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=0, yend=italy_bins$may_25[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=italy_bins$may_25[1], yend=italy_bins$may_25[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=italy_bins$may_25[2], yend=italy_bins$may_25[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=italy_bins$may_25[3], yend=italy_bins$may_25[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=italy_bins$may_25[4], yend=max(italy_bins)), color = 'black') +
  ###June 25
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=0, yend=italy_bins$june_25[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=italy_bins$june_25[1], yend=italy_bins$june_25[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=italy_bins$june_25[2], yend=italy_bins$june_25[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=italy_bins$june_25[3], yend=italy_bins$june_25[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=italy_bins$june_25[4], yend=max(italy_bins)), color = 'black') 

ggsave(filename = "plots/italy.jpeg", plot = last_plot(), device = "jpeg", dpi = 300,
       width = 300, height = 150, units = "mm")
