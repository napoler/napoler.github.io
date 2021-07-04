---
layout: post
comments: 1
title:  python导入模塊smart_imports
categories: Default
tags: Default
date: 2021-07-04 15:10
---


```python



pip install smart_imports


```

Automatically discovers & imports entities, used in the current module.
https://pypi.org/project/smart_imports/

# lazy-import模塊
簡而言之只在使用時候纔會用到模塊。

```python

pip install lazy-import

```

lazy_import provides a set of functions that load modules, and related attributes, in a lazy fashion. This allows deferring of ImportErrors to actual module use-time. Likewise, actual module initialization only takes place at use-time. This is useful when using optional dependencies with heavy loading times and/or footprints, since that cost is only paid if the module is actually used.

https://pypi.org/project/lazy-import/



