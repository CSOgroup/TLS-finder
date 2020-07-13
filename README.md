# TLS-finder
A pipeline to detect Tertiary Lymphoid Structures (TLSs) in-situ from CD20 immunofluorescence staining images.

**Step 1**

Run [GridQuant](https://github.com/CSOgroup/GridQuant) (steps 1.0 to 2.0) to generate high resolution (setting grid_spacing = 20 microns or so) count matrices. Print B-cell matrices as '.tif' tables with _TLSfinder_GetTif.R_

**Step 2**

* Import B-cell tif table in [Fiji](https://fiji.sc/) (File -> Import -> Text Image...)
* Perform a tresholding on the image with Process -> Binary -> Convert to Mask
* Detect and label TLS modelled as connected components using Plugins -> Process -> [Find Connected Regions](https://www.longair.net/edinburgh/imagej/find-connected-regions/). Set an appropriate 'Minimum number of points in a region', which sets the minimum TLS size according to your grid_spacing (e.g. setting 25 for grid_spacing = 20 corresponds to requiring a minimum surface of 10000 square microns to call a TLS).
* Save the labelled matrix with File -> Save As -> Text Image...

Step 2 is not yet available as a script.

**Step 3**
Run various downstream analyses with _TLSfinder_analyses.R_
