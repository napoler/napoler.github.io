---
layout: post
comments: 1
title:  解决kaggle中optuna可视化plotly图表不显示
categories: Default
tags: Default
date: 2021-06-22 21:17
---

解决kaggle中optuna可视化plotly图表不显示


```python

#这里
from plotly.offline import download_plotlyjs, init_notebook_mode, iplot
init_notebook_mode(connected=True) 
# end

plot_optimization_history(study)


```

offline和init_notebook_mode很重要。


[https://stackoverflow.com/questions/54064245/plot-ly-offline-mode-in-jupyter-lab-not-displaying-plots](https://stackoverflow.com/questions/54064245/plot-ly-offline-mode-in-jupyter-lab-not-displaying-plots)


