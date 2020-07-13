
# 3.0_TLSfinder_GetTif.R
# Simply takes RData count matrices for B-cells saved with GridQuant and print them as tables with '.tif' extenstion so they can be loaded in Fiji 

# Author: Daniele Tavernari
# Please cite: Tavernari et al., 2021 (see full citation on GitHub repository's README)

########## Input
OutDir_matrices = "Grid_matrices/"
s = "s8B"
grid_spacing = 20
####################

#################### Main #####################

load(file = paste0(OutDir_matrices,s,"_tileSizeMicrons",grid_spacing,"_Bcell_meaMat_and_coos.RData"))
write.table(meaMat, file = paste0(OutDir_matrices,s,"_tileSizeMicrons",grid_spacing,"_Bcell_meaMatTab.tif"), row.names = F, col.names = F, sep = "\t")
