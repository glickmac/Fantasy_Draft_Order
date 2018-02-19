# Fantasy_Draft_Order
This repository is a fantasy draft order selection tool.

The tool can be run locally with Python or via the [shiny webserver](https://glickman.shinyapps.io/Fantasy_Draft_Order/)


The tools build an NBA style lottery system with the first place finisher getting 2^0 or 1 vote while the last place finisher has 2^9 or 512 votes. The year of the draft is used as the set seed to randomize and reproduce the results. 

**Note while the process between the local and web version is the same, the languages used for each to randomize the order may result in differences between the ordering. 