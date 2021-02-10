* Encoding: UTF-8.
********************************************************************************************************************.
********* THIS SCRIPT PREPARES SPS TABLE FROM XLS FILES AND MUST BE REPLACED WITH DB2 CONNECTION****.
********************************************************************************************************************.

GET DATA
  /TYPE=XLSX
  /FILE='/Users/benitoolivos/Documents/Main/SS/Consumos 01_2019 to 01_2021.xlsx'
  /SHEET=name 'Sheet1'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

**********************************Add rows in a single table**************************************.


SAVE OUTFILE='/Users/benitoolivos/Documents/Main/SS/Data/Consumos.sav'
  /COMPRESSED.






