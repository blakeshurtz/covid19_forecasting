###france
bins_scale = france_bins$june_25

ggplot(aes(x = as_date(date), y = y), data = france_reg) +
  geom_point(shape =  4) +
  scale_y_continuous(trans='log10', 
                     limits = c(1, max(france_bins)), #max(bins)
                     breaks = c(1, bins_scale),
                     labels = c(1, bins_scale),
                     minor_breaks = NULL) +
  scale_x_date(limits = c(ymd(min(france_reg$date)), cutoff_date[3])) +
  ggtitle("FRANCE") +
  ###April 25
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=0, yend=france_bins$april_25[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=france_bins$april_25[1], yend=france_bins$april_25[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=france_bins$april_25[2], yend=france_bins$april_25[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=france_bins$april_25[3], yend=france_bins$april_25[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date[1], xend = cutoff_date[1], y=france_bins$april_25[4], yend=max(france_bins)), color = 'black') +
  ###May 25
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=0, yend=france_bins$may_25[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=france_bins$may_25[1], yend=france_bins$may_25[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=france_bins$may_25[2], yend=france_bins$may_25[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=france_bins$may_25[3], yend=france_bins$may_25[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date[2], xend = cutoff_date[2], y=france_bins$may_25[4], yend=max(france_bins)), color = 'black') +
  ###June 25
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=0, yend=france_bins$june_25[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=france_bins$june_25[1], yend=france_bins$june_25[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=france_bins$june_25[2], yend=france_bins$june_25[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=france_bins$june_25[3], yend=france_bins$june_25[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date[3], xend = cutoff_date[3], y=france_bins$june_25[4], yend=max(france_bins)), color = 'black') 
