# Define the overall theme
library(ggplot2)
mytheme <- theme_bw() + 
  theme(axis.title=element_text(family = "sans"),
        panel.grid.major=element_line(color="white"),
        panel.grid.minor=element_line(color="white"),
        panel.border=element_rect(color="white"),
        axis.line=element_line(color="gray",size=1))

# Figure 9
# Define data.frame from data.set
XX <- read.table("Equilibrium.txt", 
                 sep="\t", header=FALSE)
EQUI <- data.frame("Time"=XX$V1, "Ca"=XX$V22, "Ca_ER"=XX$V23, 
                   "Ca_ES"=XX$V24, "Ca_JER"=XX$V26, "Ca_sub"=XX$V27)
# Plot 9A
p <- ggplot(EQUI) + 
  geom_line(aes(x=Time,y=Ca, colour="A", linetype="A"), 
            size=1) + 
  geom_line(aes(x=Time,y=Ca_ER, colour="B", linetype="B"), 
            size=1) + 
  geom_line(aes(x=Time,y=Ca_ES, colour="C", linetype="C"), 
            size=1) + 
  geom_line(aes(x=Time,y=Ca_JER, colour="D", linetype="D"), 
            size=1) + 
  geom_line(aes(x=Time,y=Ca_sub, colour="E", linetype="E"), 
            size=1) +
  scale_color_manual(name = "", values = c("A"='purple', 
                                           "B"='green', 
                                           "C"='blue', 
                                           "D"='magenta', 
                                           "E"='gold'), 
                     breaks = c("A", "B", "C", "D", "E"),
                     labels = c('Cytosol', 'ER', 'ES', 
                                'JER', 'Subspace')) + 
  scale_linetype_manual(name = "",
                        values = c("A"=1, "B"=1, 
                                   "C"=1, "D"=4, "E"=4), 
                        labels = c('Cytosol', 'ER', 'ES', 
                                   'JER', 'Subspace')) + 
  mytheme + 
  theme(legend.position=c(0.8,0.6), 
        legend.text=element_text(colour="black", family="sans")) + 
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  scale_y_continuous(breaks=c(1e-8,1e-5,1e-4,1e-3))
p
# Save figures
png("EQUI.png", width=6, height=4, units='in', res=300)
p
dev.off()

# Plot 9C
YY <- read.table("3000s - Cytosolic [Ca].txt", 
                 sep="\t", header=FALSE)
Tonic_Ca <- data.frame("Time"=YY$V1, "Ca"=YY$V22, "Ca_sub"=YY$V27)

p <- ggplot(Tonic_Ca) + 
  geom_line(aes(x=Time,y=Ca, colour="A", linetype="A"), 
            size=1) + 
  geom_line(aes(x=Time,y=Ca_sub, colour="E", linetype="E"), 
            size=1) +
  scale_color_manual(name = "", values = c("A"='purple', "E"='green'), 
                     breaks = c("A", "E"),
                     labels = c('Cytosol', 'Subspace')) + 
  scale_linetype_manual(name = "",
                        values = c("A"=1, "E"=4), 
                        labels = c('Cytosol', 'Subspace')) + 
  mytheme + 
  theme(legend.position=c(0.8,0.4), 
        legend.text=element_text(colour="black", family="sans")) + 
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) 
p
# Save figures
png("Tonic_Ca.png", width=6, height=6, units='in', res=300)
p
dev.off()

# Plot 9D
Tonic_V_RO <- read.table("3000s - Voltage Change and RyR_open.txt", 
                         sep="\t", header=FALSE)
names(Tonic_V_RO) <- c("Time","Voltage", "RyR_open")
p <- ggplot(Tonic_V_RO, aes(x=Time,y=Voltage)) + 
  geom_line(colour="gold", size=1) + 
  ylab("Voltage (mV)") + xlab("Time (s)") + 
  scale_y_continuous(breaks=seq(from=-70, to=10, by=10)) + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("Tonic_V.png", width=6, height=6, units='in', res=300)
p
dev.off()

# Plot 9G
p <- ggplot(Tonic_V_RO, aes(x=Time,y=RyR_open)) + 
  geom_line(colour="blue", size=1) + 
  ylab("RyR Open Ratio") + xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("Tonic_RO.png", width=4, height=4, units='in', res=300)
p
dev.off()

# Plot 9E
Tonic_Flux <- read.table("3000s - Ca Flux.txt", 
                         sep="\t", header=FALSE)
names(Tonic_Flux) <- c("Time","PMCA", "VGCC", "in-leak", "ER-leak", 
                       "SERCA", "RyR", "DSC", "DEJ", "IP3R")
p <- ggplot(Tonic_Flux, aes(x=Time,y=VGCC)) + 
  geom_line(colour="cyan", size=1) + 
  ylab(expression(
    paste(Ca^2*'+'~'Flux'~'through'~'VGCC'~('mol'/'s')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("Tonic_VGCC.png", width=4, height=4, units='in', res=300)
p
dev.off()

# Plot 9F
p <- ggplot(Tonic_Flux, aes(x=Time,y=IP3R)) + 
  geom_line(colour="cyan", size=1) + 
  ylab(expression(paste(Ca^2*'+'~'Flux'~'through'~IP[3]*'R'~('mol'/'s')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("Tonic_IP3R.png", width=4, height=4, units='in', res=300)
p
dev.off()

# Plot 9H
p <- ggplot(Tonic_Flux, aes(x=Time,y=RyR)) + 
  geom_line(colour="cyan", size=1) + 
  ylab(expression(paste(Ca^2*'+'~'Flux'~'through'~'RyR'~('mol'/'s')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("Tonic_RyR.png", width=4, height=4, units='in', res=300)
p
dev.off()

# Plot 9I
p <- ggplot(Tonic_Flux, aes(x=Time,y=SERCA)) + 
  geom_line(colour="purple", size=1) + 
  ylab(expression(paste(Ca^2*'+'~'Flux'~'through'~'SERCA'~('mol'/'s')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("Tonic_SERCA.png", width=4, height=4, units='in', res=300)
p
dev.off()

# Plot 9J
p <- ggplot(Tonic_Flux, aes(x=Time,y=PMCA)) + 
  geom_line(colour="purple", size=1) + 
  ylab(expression(paste(Ca^2*'+'~'Flux'~'through'~'PMCA'~('mol'/'s')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("Tonic_PMCA.png", width=4, height=4, units='in', res=300)
p
dev.off()



# Figure 10
# Define data.frame from data.set
XX <- read.table("Inactivation - Cytosolic [Ca].txt", 
                 sep="\t", header=FALSE)
Inac <- data.frame("Time"=XX$V1, "Ca"=XX$V22)

# Plot
p <- ggplot(Inac) + 
  geom_line(aes(x=Time,y=Ca), colour="blue", size=1) + 
  mytheme +  
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) 
p

# Save figures
png("Ca_inactivation.png", width=6, height=6, units='in', res=300)
p
dev.off()


# Figure 11B
# Define data.frame from data.set
XX <- read.table("VGCC knockout - Cytosolic [Ca].txt", 
                 sep="\t", header=FALSE)
VGCC_out <- data.frame("Time"=XX$V1, "Ca"=XX$V22)

# Plot
p <- ggplot(VGCC_out) + 
  geom_line(aes(x=Time,y=Ca), colour="yellow", size=1) + 
  mytheme +  
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  scale_y_continuous(limits=c(2.622e-8, 2.625e-8), 
                     breaks=c(2.6220e-8, 2.6225e-8, 2.6230e-8,
                              2.6235e-8, 2.6240e-8, 2.6245e-8, 
                              2.6250e-8))
p

# Save figures
png("Ca_VGCC_out.png", width=6, height=6, units='in', res=300)
p
dev.off()



# Figure 12
# Figure 12B
# Define data.frame from data.set
XX <- read.table("RyR knockout - Cytosolic [Ca].txt", 
                 sep="\t", header=FALSE)
RyR_out <- data.frame("Time"=XX$V1, "Ca"=XX$V22)

# Plot  
p <- ggplot(RyR_out) + 
  geom_line(aes(x=Time,y=Ca), colour="red", size=1) + 
  mytheme +  
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) 
p
# Save figures
png("Ca_RyR_out.png", width=6, height=6, units='in', res=300)
p
dev.off()

# Figure 12C
RyR_out_Flux <- read.table("RyR knockout - Ca Flux.txt", 
                         sep="\t", header=FALSE)
names(RyR_out_Flux) <- c("Time","PMCA", "VGCC", "in-leak", "ER-leak", 
                       "SERCA", "RyR", "DSC", "DEJ", "IP3R")
# Plot
p <- ggplot(RyR_out_Flux, aes(x=Time,y=VGCC)) + 
  geom_line(colour="cyan", size=1) + 
  ylab(expression(
    paste(Ca^2*'+'~'Flux'~'through'~'VGCC'~('mol'/'s')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("RyR_out_VGCC.png", width=6, height=6, units='in', res=300)
p
dev.off()

# Figure 12D
# Plot
p <- ggplot(RyR_out_Flux, aes(x=Time,y=IP3R)) + 
  geom_line(colour="cyan", size=1) + 
  ylab(expression(
    paste(Ca^2*'+'~'Flux'~'through'~IP[3]*'R'~('mol'/'s')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) + 
  mytheme
p
# Save figures
png("RyR_out_IP3R.png", width=6, height=6, units='in', res=300)
p
dev.off()



# Figure 13B
# Define data.frame from data.set
XX <- read.table("IP3R knockout - Cytosolic [Ca].txt", 
                 sep="\t", header=FALSE)
IP3R_out <- data.frame("Time"=XX$V1, "Ca"=XX$V22)

# Plot
p <- ggplot(IP3R_out) + 
  geom_line(aes(x=Time,y=Ca), colour="blue", size=1) + 
  mytheme +  
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) 
p

# Save figures
png("Ca_IP3R_out.png", width=6, height=6, units='in', res=300)
p
dev.off()



# Figure 14
# Figure 14A
# Define data.frame from data.set
XX <- read.table("SERCA knockout - Cytosolic [Ca].txt", 
                 sep="\t", header=FALSE)
SERCA_out <- data.frame("Time"=XX$V1, "Ca"=XX$V22)

# Plot
p <- ggplot(SERCA_out) + 
  geom_line(aes(x=Time,y=Ca), colour="gold", size=1) + 
  mytheme +  
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) 
p

# Save figures
png("Ca_SERCA_out.png", width=6, height=6, units='in', res=300)
p
dev.off()


# Figure 14B
# Define data.frame from data.set
XX <- read.table("PMCA knockout - Cytosolic [Ca].txt", 
                 sep="\t", header=FALSE)
PMCA_out <- data.frame("Time"=XX$V1, "Ca"=XX$V22)

# Plot
p <- ggplot(PMCA_out) + 
  geom_line(aes(x=Time,y=Ca), colour="purple", size=1) + 
  mytheme +  
  ylab(expression(paste('['*Ca^2*'+'*']'~('M')))) + 
  xlab("Time (s)") + 
  scale_x_continuous(breaks=c(50, seq(from=500, to=3000, by=500))) 
p

# Save figures
png("Ca_PMCA_out.png", width=6, height=6, units='in', res=300)
p
dev.off()