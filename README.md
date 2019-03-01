# CICD pipeline example 

build a sample CICD pipeline using jenkins and jenkins pipeline. 
CICD for a typical Informatica ETL project (sql files, Informatica DVO(test), Informatica Workflow).


Below an explanation of each configuration entries:

 - *dvo/:* contains DVO (tests) artifact exported by Informatica DVO NiFi.
 - *oracle/:* contains oracle sql script 
 - *pwc/*: contains workflow and control file with its document type definition (DTD) 
 - *jenkins/*: contains jenkins pipeline(under job folder) and Jenkinsfile (pipeline as a code)
 - *Script/*: simple framework to run, test, delploy, parse etc..
 - *mktdb_release1.yml*: deploy configuration (what are the artifacts to deploy) 
 - *commit_start_pipeline.sh*: runs jobs through jenkins CLI 
