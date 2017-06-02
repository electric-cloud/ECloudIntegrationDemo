# Datical and Electric Cloud integration 

This is the scenario for the demo.
## Setup

### DB
1. start with 4 empty MS SQL DBs - multi-schema
  - TO DO: provide script to setup everything
 
### Datical
1. install Datical in C:\apps\DaticalDB
2. install Electric Cloud agent
2. the Datical project is at [https://github.com/datical-customersuccess/ECloudIntegrationDemo](https://github.com/datical-customersuccess/ECloudIntegrationDemo)
3. The SQL repo is at [https://github.com/datical-customersuccess/ECloudIntegrationDemo_sql](https://github.com/datical-customersuccess/ECloudIntegrationDemo_sql)


### Electric Cloud
1. Create a resource named daticalWindows pointing to the resource where DaticalDB is installed
2. Install [EC-Admin](https://github.com/electric-cloud/EC-Admin) plugin
2. Install EC-Datical plugins available at:
  - [stable official version](https://github.com/electric-cloud/EC-Datical)
  - [Laurent's Dev repo](https://github.com/lrochette/EC-Datical)
3. The code for the Electric Cloud objects (CI procedure, pipeline, applications, ...) is available at [https://github.com/lrochette/Datical-Flow_Integration](https://github.com/lrochette/Datical-Flow_Integration)


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

### Application
the application will contain 1 component "datical" with 2 processes for each Forecast and Deploy