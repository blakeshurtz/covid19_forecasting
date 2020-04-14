###italy
bins_scale = sk_bins$july_8

ggplot(aes(x = as_date(date), y = y), data = sk_reg) +
  geom_point(shape =  4) +
  scale_y_continuous(trans='log10', 
                     limits = c(1, max(sk_bins)), #max(bins)
                     breaks = c(1, bins_scale),
                     labels = c(1, bins_scale),
                     minor_breaks = NULL) +
  scale_x_date(limits = c(ymd(min(sk_reg$date)), cutoff_date_jp_sk[3])) +
  ggtitle("SK") +
  ###May 8
  geom_segment(aes(x = cutoff_date_jp_sk[1], xend = cutoff_date_jp_sk[1], y=0, yend=sk_bins$may_8[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date_jp_sk[1], xend = cutoff_date_jp_sk[1], y=sk_bins$may_8[1], yend=sk_bins$may_8[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date_jp_sk[1], xend = cutoff_date_jp_sk[1], y=sk_bins$may_8[2], yend=sk_bins$may_8[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date_jp_sk[1], xend = cutoff_date_jp_sk[1], y=sk_bins$may_8[3], yend=sk_bins$may_8[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date_jp_sk[1], xend = cutoff_date_jp_sk[1], y=sk_bins$may_8[4], yend=max(sk_bins)), color = 'black') +
  ###June 8
  geom_segment(aes(x = cutoff_date_jp_sk[2], xend = cutoff_date_jp_sk[2], y=0, yend=sk_bins$june_8[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date_jp_sk[2], xend = cutoff_date_jp_sk[2], y=sk_bins$june_8[1], yend=sk_bins$june_8[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date_jp_sk[2], xend = cutoff_date_jp_sk[2], y=sk_bins$june_8[2], yend=sk_bins$june_8[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date_jp_sk[2], xend = cutoff_date_jp_sk[2], y=sk_bins$june_8[3], yend=sk_bins$june_8[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date_jp_sk[2], xend = cutoff_date_jp_sk[2], y=sk_bins$june_8[4], yend=max(sk_bins)), color = 'black') +
  ###July 8
  geom_segment(aes(x = cutoff_date_jp_sk[3], xend = cutoff_date_jp_sk[3], y=0, yend=sk_bins$july_8[1]), color = 'green') +
  geom_segment(aes(x = cutoff_date_jp_sk[3], xend = cutoff_date_jp_sk[3], y=sk_bins$july_8[1], yend=sk_bins$july_8[2]), color = 'orange') +
  geom_segment(aes(x = cutoff_date_jp_sk[3], xend = cutoff_date_jp_sk[3], y=sk_bins$july_8[2], yend=sk_bins$july_8[3]), color = 'red') +
  geom_segment(aes(x = cutoff_date_jp_sk[3], xend = cutoff_date_jp_sk[3], y=sk_bins$july_8[3], yend=sk_bins$july_8[4]), color = 'purple') +
  geom_segment(aes(x = cutoff_date_jp_sk[3], xend = cutoff_date_jp_sk[3], y=sk_bins$july_8[4], yend=max(sk_bins)), color = 'black') 

ggsave(filename = "plots/sk.jpeg", plot = last_plot(), device = "jpeg", dpi = 300,
       width = 300, height = 150, units = "mm")
