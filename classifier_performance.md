# Performance Metrics
### https://blog.csdn.net/guohecang/article/details/52276548
### https://en.wikipedia.org/wiki/Evaluation_of_binary_classifiers
    Confusion Matrix  
    +-----------------+-------------------------+  
    |                 |  predicted class        |  
    |                 +------------+------------+  
    |                 |    +       |    -       |  
    +-----------+-----+------------+------------+  
    |   actual  |  +  |  f++ (TP)  |  f+- (FN)  |  
    |           +-----+------------+------------+  
    |   class   |  -  |  f-+ (FP)  |  f-- (TN)  |  
    +-----------+-----+------------+------------+  
    **Positive** or **Negative** indicates the predicted classes
    **True**     or **False**    indicates the relatationship between actual and predicted classes

**Accuracy** is the number of correct predictions made by the model over all kinds predictions made

> Accuracy = ( TP + TN ) / ( TP + FN + FP + TN )

**Precision** determines the fraction of records that actually turns out to be positive in the group the classifier has declared as a positive class

> Percision = TP / ( TP + FP )

**Truth positive rate** (**TPR**) [**sensitivity**|**Recall**|**灵敏度**] is defined as the fraction of positive examples predicted correctly

> TPR = TP / ( TP + FN )

**Truth negative rate** (**TNR**) [**specificity**|**特指度**] is defined as the fraction of negative examples predicted correctly

> TNR = TN / ( TN + FP )

**False positive rate** (**FPR**) is defined as the fraction of negative examples predicted as a positive class

> FPR = FP / ( FP + TN )

**False negative rate** (**FNR**) is defined as the fraction of positive examples predicted as a negative class

> FNR = FN / ( FN + TP )

**Weighted Accuracy**

> Weighted Accuracy = ( w1\*TP + w4\*TN ) / ( w1\*TP + w2\*FP + w3\*FN + w4\*TN )

# the Receiver Operating Characteristic Curve

A Receiver Operating Characteristic (**ROC**) curve is a graphical approach for displaying the tradeoff between TPR and FPR of a classifier.
The area under the ROC curve (**AUC**) provides anthor approach for evaluating which model is better on average.

![ROC curve](https://upload.wikimedia.org/wikipedia/commons/6/6b/Roccurves.png)

