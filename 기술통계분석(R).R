# �ܺ��ڷ� �ҷ����� �� �ڵ�����(�����̸� �ο�, �������� ���������κ�ȯ
ex1 = read.csv("����1.csv", header=T)
str(ex1)
attach(ex1); ex1
names(ex1)=c("������", "����", "������", "��ȣ��", "����", "����", "������")
attach(ex1); ex1
����=factor(����, levels=c(1,2), labels=c("����", "����")); ����
������=factor(������, levels=c(1,2,3,4),labels=c("A", "B", "AB", "O")); ������
����=factor(����, levels=c(1,2,3,4,5,6), 
    labels=c("tv", "radio", "�Ź�", "����", "�Ұ�", "��Ÿ")); ����
ex1.f=data.frame(������, ����, ������, ��ȣ��, ����, ����, ������)
attach(ex1.f); ex1.f

# ������(ǥ, �׷���) : ��������ǥ, ��뵵������ǥ, ���뵵ǥ, ������׷�, cat(category)
table(������); prop.table(table(������))
table(����) 
cat.age=cut(����, breaks=c(10,19,29,39,49)); cat.age; table(cat.age)
levels(cat.age)=c("20�̸�", "20��", "30��", "40��"); table(cat.age)
barplot(table(������)); barplot(table(cat.age))
hist(����)
hist(����, breaks=c(10,19,29,39,49),prob=T, main="�������ɿ� ���� ������׷�")
stem(����); stem(����, scale=2) # �ٱ��� ����� �ø���
boxplot(����, main="�������ɿ� ���� ���ڱ׸�")

# ������(��ġ, ��跮) : ������跮(�߽ɰ���, ��������, ��������)
length(����); mean(����); mean(����, trim=1/10); median(����)
range(����); min(����); max(����); var(����); sd(����)
quantile(����); IQR(����)
cv_age=sd(����)/mean(����)
sk_age=3*(mean(����)-median(����))/sd(����)
cv_age; sk_age

summary(����); fivenum(����); summary(ex1.f)
par(mfrow=c(1,2))
boxplot(������~����); boxplot(������~cat.age)


# ������ı� : ������� vs BMI, ��������� ���� BMI���ڵ�ǥ
desa=read.csv("������ı�.csv", header=T)
desa; str(desa)
attach(desa)
group=factor(exco, levels=c(1,2), labels=c("���豺", "������")); group
summary(bmi1); summary(bmi2)  # bmi1~����, bmi2~����
par(mfrow=c(1,2))
boxplot(bmi1~group); boxplot(bmi2~group)

