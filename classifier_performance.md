# alternative metrics

confusion matrix  
  
    +-----------------+-------------------------+  
    |                 |  predicted class        |  
    |                 +------------+------------+  
    |                 |    +       |    -       |  
    +-----------+-----+------------+------------+  
    |   actual  |  +  |  f++ (TP)  |  f+- (FN)  |  
    |           +-----+------------+------------+  
    |   class   |  -  |  f-+ (FP)  |  f-- (TN)  |  
    +-----------+-----+------------+------------+  
    
**Truth positive rate** (**TPR**) [**sensitivity**|**Recall**] is defined as the fraction of positive examples predicted correctly

> TPR = TP / ( TP + FN )

**Truth negative rate** (**TNR**) [**specificity**] is defined as the fraction of negative examples predicted correctly

> TNR = TN / ( TN + FP )

**False positive rate** (**FPR**) is defined as the fraction of negative examples predicted as a positive class

> FPR = FP / ( FP + TN )

**False negative rate** (**FNR**) is defined as the fraction of positive examples predicted as a negative class

> FNR = FN / ( FN + TP )

**Precision** determines the fraction of records that actually turns out to be positive in the group the classifier has declared as a positive class


# the Receiver Operating Characteristic Curve


