

---
layout: post
comments: 1
title:  2021-06-14 记事训练seq2seq
categories: Default
tags: fairseq transformers mlm-pytorch mlm pytorch
date: 2021-06-14 16:18
---

 2021-06-14 记事

使用 #transformers 的各种模型训练 #seq2seq ，参考这里：

摘要生成
[https://github.com/huggingface/transformers/blob/master/examples/pytorch/summarization/run\_summarization.py](https://github.com/huggingface/transformers/blob/master/examples/pytorch/summarization/run_summarization.py)

摘要生成核心
  
AutoConfig,

#AutoModelForSeq2SeqLM,

AutoTokenizer,

DataCollatorForSeq2Seq,

HfArgumentParser,

Seq2SeqTrainer,

Seq2SeqTrainingArguments,

AutoModelForSeq2SeqLM只要传入labels就可以直接返回loss，之后的训练就变得非常简单了。

seq2seq训练类

[https://github.com/huggingface/transformers/blob/783b0dd5891174922ff6bc9874350063bd9a0135/examples/legacy/seq2seq/seq2seq\_trainer.py](https://github.com/huggingface/transformers/blob/783b0dd5891174922ff6bc9874350063bd9a0135/examples/legacy/seq2seq/seq2seq_trainer.py)



#损失计算
```
#         https://github.com/huggingface/transformers/blob/783b0dd5891174922ff6bc9874350063bd9a0135/examples/legacy/seq2seq/seq2seq_trainer.py#L174
#lprobs = torch.nn.functional.log_softmax(logits, dim=-1)
#             loss, _ = self.loss_fn(lprobs, labels, self.args.label_smoothing, ignore_index=self.config.pad_token_id)

```

另外[fairseq](https://github.com/pytorch/fairseq)也是个不错的项目 一大堆可以参考的示例

[https://github.com/pytorch/fairseq/tree/master/examples](https://github.com/pytorch/fairseq/tree/master/examples)

对了 #mlm-pytorch 模块也不错，如果做mlm任务可以借鉴使用

[https://github.com/lucidrains/mlm-pytorch](https://github.com/lucidrains/mlm-pytorch)