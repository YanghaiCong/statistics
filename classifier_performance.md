# alternative metrics

confusion matrix  
  
    |-----------------|-------------------------|  
    |                 |  predicted class        |  
    |                 |------------|------------|  
    |                 |    +       |    -       |  
    |-----------|-----|------------|------------|  
    |   actual  |  +  |  f++ (TP)  |  f+- (FN)  |  
    |           |-----|------------|------------|  
    |   clas    |  -  |  f-+ (FP)  |  f-- (TN)  |  
    |-----------|-----|------------|------------|  

    | Sample Type  | metobolite   | peptide      | lipidomics   |
    | ---          | ---          | ---          | ---          |
    | urine        | ok           | ok           | ?            |
    | dus          | ok           | ok           | ?            |
    | serum        | ok           | ok           | ok           |
    | plasma       | ok           | ok           | ok           |
    | blood        | ok           | ok           | ok           |
    | dbs          | ok           | ok           | ok           |
