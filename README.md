Alaska_Landings
===============

To get started:

Follow instruction in Documents folder "Installing RMagick on Windows.pdf"
once this is completed:

$cd Alaska_Landings

$ bundle install

$ rake db:migrate

FAA regularly releases new data about it's aiports, these documents can be downloaded
as Excel spreadsheets from http://www.faa.gov/airports/airport_safety/airportdata_5010/menu/index.cfm
the four files required are(FAA Title, Assumed name when downloaded)
Airport Facilites Data, NfdcFacilities.xls
Airport Runways Data, NfdcRunways.xls
Airport Remarks Data, NfdcRemarks.xls
Airport Schedules Data, NfdcSchedules.xls

All of these files need to be converted to .csv files, additionally as of Nov 2012, all commas and non standard
ASCII values must be removed for import into the database.

Move the files to the following locations

NfdcFacilities.csv -> Alaska_Landings
The remaining three -> Alaska_Landings/script

Once this is complete to import the data execute the following commands:


$ rake csv_model_import[NfdcFacilities.csv,Faafacility]

$ cd script

$ ruby ./Import_runways.rb NfdcRunways.csv

$ ruby ./Import_remarks_rev.rb NfdcRemarks.csv

$ ruby ./Import_schedules_rev.rb NfdcSchedule.csv

These scripts are fast this process will take ~5 minutes.

You're now ready to run the application
