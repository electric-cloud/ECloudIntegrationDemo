# Datical and Electric Cloud integration 

This is the scenario for the demo.
## Setup

1. start with 4 empty MS SQL DBs - multi-schema
  - TO DO: provide script to setup everything
2. the EC-Datical plugins is available at 
  - [stable official version](https://github.com/electric-cloud/EC-Datical)
  - [Laurent's Dev repo](https://github.com/lrochette/EC-Datical)
3. The code for the Electric Cloud objects (CI procedure, pipeline, applications, ...) is available at [https://github.com/lrochette/Datical-Flow_Integration](https://github.com/lrochette/Datical-Flow_Integration)
4. 

## CI Build
Note: CI could be skipped for time purpose and simply call the build procedure manually.

The build procedure would have the following steps:

1. checkout Datical project
2. checkout SQL project
3. run packager
  - link report to jobDetail page
4. check in changes
5. create artifact


###Demo
1. package table creation
  - should fail on a bad type on a columnn
2. fix error and re-package
  - artifact created

## Deployment pipeline  
The pipeline will replicate the Datical pipeline minus the REF stage ("managed" by the CI procedure)

