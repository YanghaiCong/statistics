# performance metrics

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

**Accuracy** is the number of correct predictions made by the model over all kinds predictions made

> Accuracy = ( TP + TN ) / ( TP + FN + FP + TN )

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

A Receiver Operating Characteristic (**ROC**) curve is a graphical approach for displaying the tradeoff between TPR and FPR of a classifier.
The area under the ROC curve (**AUC**) provides anthor approach for evaluating which model is better on average.

![ROC curve](https://upload.wikimedia.org/wikipedia/commons/6/6b/Roccurves.png)

