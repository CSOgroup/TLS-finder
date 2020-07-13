# TLS-finder
A pipeline to detect Tertiary Lymphoid Structures in-situ from CD20 immunofluorescence staining images.

**Step 1**

Run [GridQuant](https://github.com/CSOgroup/GridQuant) (steps 1.0 to 2.0) to generate high resolution (setting grid_spacing = 20 or so) count matrices. Print B-cell matrices as '.tif' tables with _3.0_TLSfinder_GetTif.R_

**Step 2**

* Import B-cell tif table in [Fiji](https://fiji.sc/) (File -> Import -> Text Image...)
* Perform a tresholding on the image with Process -> Binary -> Convert to Mask
* Detect and label TLS modelled as connected components using Plugins -> Process -> [Find Connected Regions](https://www.longair.net/edinburgh/imagej/find-connected-regions/)
