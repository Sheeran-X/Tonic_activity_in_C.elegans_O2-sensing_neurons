# Tonic_activity_in_C.elegans_O2-sensing_neurons
A quantitative model based on biochemical kinetics, repesenting the tonic Calcium activity and Calcium signalling in C. elegans Oxygen-sensing neurons, encoded in COPASI.

How to use:
For results in Figure 7, run the model file "Reproduced ASH.cps" in COPASI, or import the file "Reproduced ASH.xml" into COPASI. Simulations should be run with the Tasks -- "Time course". All data and R scripts needed to generate figures are included in the same folder "ASH Reproduction".

For results in Figure 9, run the model file "Tonic.cps" in COPASI, or import the file "Tonic.xml" into COPASI. Simulations should be run with the Tasks -- "Time course". All data and R scripts needed to generate figures are included in the same folder "Tonic  Activity".
For results in Figure 10, run the model file "Stimulation withdrawal.cps" in COPASI, or import the file "Stimulation withdrawal.xml" into COPASI. Other information is the same as the above.
For results in Figure 11, use the model file "VGCC knockout.cps" or import the file "VGCC knockout.xml". Other information is the same as the above. For results in Figure 12, use the model file "RyR knockout.cps" or import the file "RyR knockout.xml". For results in Figure 13, use the model file "IP3R knockout.cps" or import the file "IP3R knockout.xml". For results in Figure 14, use the model files "SERCA knockout.cps" and "PMCA knockout.cps" or import the files "SERCA knockout.xml" and "PMCA knockout.xml". 


Authors List:
Xu, Xiaoran; 
Busch, Karl Emanuel; 
Stefan, Melanie I.


Relation (is Version Of):
https://datashare.is.ed.ac.uk/handle/10283/3146
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0201302
https://www.ebi.ac.uk/biomodels/BIOMD0000000060
https://www.ebi.ac.uk/biomodels/MODEL0847869198


Description:
Aging leads to deterioration of neural plasticity, reflecting the age-related cognitive decline, even neurodegeneration diseases. This fearsome feature motivates increasing number of studies to look into the aging process. However, the underlying mechanisms remains largely unknown. Chronic neuronal hyperactivity accelerates the age-related decline of Oxygen-evoked neural plasticity in C. elegans. And, Calcium dynamic and signalling complexly govern such decline. In this work, I built a quantitative model representing the tonic Calcium activity and Calcium signalling pathway in C. elegans Oxygen-sensing neurons. Such calcium dynamics is the basis of chronic neuronal hyperactivity. This computational and mathematical model was constructed on biochemical kinetics. The following components have been involved: bidirectional fluxes between extracellular space and cytosol through VGCC and PMCA; downstream signalling pathways of Calcium and Calmodulin, including CAMKII, CalcineurinIn and PP1 pathways; Calcium-induced Calcium release through IP3R and RyR; trigger representing the Oxygen-sensing stimulation signal. In general, it well reproduced former experimental measurements, and offered analyses and predictions regarding the contribution of different Calcium channels to the tonic activity. Importantly, I believe that this proposed model constituted a model foundation for further development and future studies on neural hyperactivity-dependent decline of neuroplasticity with age.
