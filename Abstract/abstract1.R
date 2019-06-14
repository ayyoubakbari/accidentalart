library(ggplot2)
n=3000
t1=1:n
t0=seq(3,2*n+1,2)%%n
t2=t0+(t0==0)*n
df=data.frame(x=sin((t1-1)*3*pi/n^2), 
              y=cos((t1-1)*3*pi/n^.1),
              x2=sin((t2-1)*3*pi/n^3),
              y2=cos((t2-1)*3*pi/n^6))
png("abstract1.png", units="px", width=1600, height=1600, res=300)
ggplot(df,aes(x,y,xend=x2,yend=y2)) +
  geom_segment(alpha=.1)+theme_void()