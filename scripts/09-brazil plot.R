###italy
bins_scale = brazil_bins$july_15

ggplot(aes(x = as_date(date), y = y), data = brazil_reg) +
  geom_point(shape =  4) +
  scale_y_continuous(trans='log10', 
                     limits = c(1, max(brazil_bins)), #max(bins)
                     breaks = c(1, bins_scale),
                     labels = c(1, bins_scale),
                     minor_breaks = NULL) +
  scale_x_date(limits = c(ymd(min(brazil_reg$date)), cutoff_date_br_in[3])) +
  ggtitle("Brazil") +
  ###May 15
  geom_segment(aes(x = cutoff_date_br_in[1], xend = cutoff_date_br_in[1], y=0, yend=brazil_bins$may_15[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date_br_in[1], xend = cutoff_date_br_in[1], y=brazil_bins$may_15[1], yend=brazil_bins$may_15[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date_br_in[1], xend = cutoff_date_br_in[1], y=brazil_bins$may_15[2], yend=brazil_bins$may_15[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date_br_in[1], xend = cutoff_date_br_in[1], y=brazil_bins$may_15[3], yend=brazil_bins$may_15[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date_br_in[1], xend = cutoff_date_br_in[1], y=brazil_bins$may_15[4], yend=max(brazil_bins)), color = 'black') +
  ###June 15
  geom_segment(aes(x = cutoff_date_br_in[2], xend = cutoff_date_br_in[2], y=0, yend=brazil_bins$june_15[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date_br_in[2], xend = cutoff_date_br_in[2], y=brazil_bins$june_15[1], yend=brazil_bins$june_15[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date_br_in[2], xend = cutoff_date_br_in[2], y=brazil_bins$june_15[2], yend=brazil_bins$june_15[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date_br_in[2], xend = cutoff_date_br_in[2], y=brazil_bins$june_15[3], yend=brazil_bins$june_15[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date_br_in[2], xend = cutoff_date_br_in[2], y=brazil_bins$june_15[4], yend=max(brazil_bins)), color = 'black') +
  ###July 15
  geom_segment(aes(x = cutoff_date_br_in[3], xend = cutoff_date_br_in[3], y=0, yend=brazil_bins$july_15[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date_br_in[3], xend = cutoff_date_br_in[3], y=brazil_bins$july_15[1], yend=brazil_bins$july_15[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date_br_in[3], xend = cutoff_date_br_in[3], y=brazil_bins$july_15[2], yend=brazil_bins$july_15[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date_br_in[3], xend = cutoff_date_br_in[3], y=brazil_bins$july_15[3], yend=brazil_bins$july_15[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date_br_in[3], xend = cutoff_date_br_in[3], y=brazil_bins$july_15[4], yend=max(brazil_bins)), color = 'black') 

ggsave(filename = "plots/brazil.jpeg", plot = last_plot(), device = "jpeg", dpi = 300,
       width = 300, height = 150, units = "mm")
