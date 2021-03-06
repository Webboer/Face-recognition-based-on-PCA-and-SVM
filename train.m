%利用libsvm工具箱（台湾林智仁开发）
%第一个参数为标签，第二个为训练数据，第三个是个命令集合，-t表示核函数，-c为惩罚系数，-v为交叉验证数
model = svmtrain(label,scaledface,'-t 0 -c 1');%-t表示核函数，0时线性核，1多项式核，2径向基函数（高斯），3sigmod核函数

%输出的三个参数分别为预测的标签，准确率，评估值（非分类问题用着），
%输入为测试数据的标签（这个可与可无，如果没有，那么预测的准确率accuracy就没有意义了，
%如果有，那么就可以通过这个值与预测出来的那个类型值相比较得出准确率accuracy，
%但是要说明一点的是，无论这个值有没有，在使用的时候都得加上，即使没有，也要随便加上一个类型值，
%反正你也不管它对不对，这是函数使用所规定的的
[predict_label,accuracy,prob_estimates]=svmpredict(label,scaledface,model);

