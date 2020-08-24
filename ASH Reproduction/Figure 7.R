# Define data.frame from data.set
library(ggplot2)
ASH_V_S <- read.table("Voltage + Stimulation.txt", 
                      sep="\t", header=FALSE)
names(ASH_V_S) <- c("Time","Voltage", "Stimulation")

# Define the overall theme
mytheme <- theme_bw() + 
           theme(axis.title=element_text(family = "sans"),
           panel.grid.major=element_line(color="white"),
           panel.grid.minor=element_line(color="white"),
           panel.border=element_rect(color="white"),
           axis.line=element_line(color="gray",size=1))
# Plot 7C
# Plot the Voltage change
p <- ggplot(ASH_V_S, aes(x=Time,y=Voltage)) + 
     geom_line(colour="gold", size=1) + 
     ylab("Voltage (mV)") + xlab("Time (s)") + 
     scale_y_continuous(breaks=seq(from=-70, to=10, by=10)) + 
     scale_x_continuous(breaks=seq(from=0, to=300, by=30)) + mytheme

# Plot the Stimulation change
S <- ggplot(ASH_V_S, aes(x=Time,y=Stimulation)) + 
     geom_step(colour="red",size=1) + ylab("Stimulation") + 
     annotate("text", x=45, y=350, label="Stimulus", 
              family= "sans", color="red", size=4) + mytheme + 
     scale_y_continuous(limits=c(0,400),breaks=c(0,200)) + 
     scale_x_continuous(breaks=seq(from=0, to=300, by=30)) + 
     theme(axis.title.x=element_blank(), axis.text.x=element_blank(), 
           axis.line.x=element_blank()) + 
           coord_fixed(1/15)

# Converge multiple plots
install.packages("Rmisc")
library(Rmisc)
multiplot(S, p, cols=1)

# Save figures
png("ASH_V_S.png", width=6, height=6, units='in', res=300)
multiplot(S, p, cols=1)
dev.off()



# Plot 7D
Ca_Flux <- read.table("Ca Flux through Channels.txt", 
                      sep="\t", header=FALSE)
names(Ca_Flux) <- c("Time","PMCA", "IP3R", "TRPV", "VGCC", "SERCA")

# Plot the Ca Flux change
p <- ggplot(Ca_Flux) + 
        geom_line(aes(x=Time,y=PMCA, colour="A", linetype="A"), 
                  size=1) + 
        geom_line(aes(x=Time,y=TRPV, colour="B", linetype="B"), 
                  size=1) + 
        geom_line(aes(x=Time,y=VGCC, colour="C", linetype="C"), 
                  size=1) + 
        geom_line(aes(x=Time,y=SERCA, colour="D", linetype="D"), 
                  size=1) + 
        scale_color_manual(name = "", values = c("A"='blue', 
                                                 "B"='gold', 
                                                 "C"='green', 
                                                 "D"='magenta'), 
                           breaks = c("A", "B", "C", "D"),
                           labels = c('PMCA', 'TRPV', 'VGCC', 'SERCA')) + 
        scale_linetype_manual(name = "",
                              values = c("A"=2, "B"=6, "C"=3, "D"=1), 
                              labels = c('PMCA', 'TRPV', 'VGCC', 'SERCA')) + 
        mytheme + 
        theme(legend.position=c(0.8,0.8), 
              legend.text=element_text(colour="black", family="sans")) + 
        ylab(expression(paste(Ca^2*'+'~'Flux'~(mu*'mol')/'s'))) + 
        xlab("Time (s)") + 
        scale_x_continuous(breaks=seq(from=0, to=300, by=30)) + 
        scale_y_continuous(breaks=seq(from=0, to=35, by=5))

# Converge multiple plots
install.packages("Rmisc")
library(Rmisc)
multiplot(S, p, cols=1)

# Save figures
png("Ca_Flux.png", width=6, height=6, units='in', res=300)
multiplot(S, p, cols=1)
dev.off()