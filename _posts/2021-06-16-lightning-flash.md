---
layout: post
comments: 1
title:  lightning-flash 预测泰坦尼克号信息
categories: Default
tags: Default
date: 2021-06-16 21:47
---

#lightning-flash
PyTorchLightning/lightning-flash：用于快速原型设计、基线、微调和解决深度学习问题的任务集合。

[https://github.com/PyTorchLightning/lightning-flash](https://github.com/PyTorchLightning/lightning-flash)

文档在这里
[https://lightning-flash.readthedocs.io/en/latest/reference/tabular\_classification.html](https://lightning-flash.readthedocs.io/en/latest/reference/tabular_classification.html)


https://lightning-flash.readthedocs.io/

还是很不错的
```python
from torchmetrics.classification import Accuracy, Precision, Recall
import flash
from flash.core.data.utils import download_data
from flash.tabular import TabularClassifier, TabularData

# 1. Download the data
download_data("https://pl-flash-data.s3.amazonaws.com/titanic.zip", 'data/')

# 2. Load the data
datamodule = TabularData.from_csv(
    ["Sex", "Age", "SibSp", "Parch", "Ticket", "Cabin", "Embarked"],
    "Fare",
    target_fields="Survived",
    train_file="./data/titanic/titanic.csv",
    test_file="./data/titanic/test.csv",
    val_split=0.25,
)

# 3. Build the model
model = TabularClassifier.from_data(datamodule, metrics=[Accuracy(), Precision(), Recall()])

# 4. Create the trainer. Run 10 times on data
trainer = flash.Trainer(max_epochs=10)

# 5. Train the model
trainer.fit(model, datamodule=datamodule)

# 6. Test model
trainer.test()

# 7. Predict!
predictions = model.predict("data/titanic/titanic.csv")
print(predictions)

```


