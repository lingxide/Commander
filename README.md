# Commander 0.9 RTM Version

## ���

Commander  0.9 ��һ����������Զ������ɹ��ߣ�����֧�����ض���CSVģ��ֱ�����ɽ����������ʹ�÷�ʽ��Ŀǰ�Ѿ�֧��H3C���������������ɣ�֧���趨VLAN����������SVI����·�ۺϵ���ʮ�����ܡ�

## ������ϵ

### ������װ

������װ������Ŀǰ����bash 4.3.11(1)��gawk 4.0.1��awk 4.0.1���У�Ŀǰ����Tiny Core Linux��Windows-Linux��ϵͳ����ͨ����

### OVA��װ

����Ҳ�ṩOVAֱ�ӵ���������İ�װ��ʽ��ͨ����װ��Tiny Core Linux�У���������ע������ϵ��Ŀǰ�Ѿ�����VMware Workstation 12.0.0����ͨ����

## �״�ʹ��

### �༭ģ��

�����ṩ��`template.xlsx`�����������ķ�����д��Ӧ���Զ����ű���**����������ΪCSV��ʽ**��

### ������װ

����ͨ��������װ�ķ�ʽʹ�ñ��ű�ʱ��������ж���ĳ�ʼ�����á���ȷ�����нű��ļ����Ѹ���`execute`��Ȩ�ޣ����δ���裬��ʹ���������

     chmod +x ./Commander/*.sh

��󼴿�ʹ�������������ʹ�ã�

     ./commander.sh {input_csv}

��`output`�ļ����п����ҵ��Ѿ����ɺõĽű���

### OVA��װ

>> ��֪BUG��������OVAʱ�������̺Ϲ�����֤ʧ�ܣ��밴Retry������

#### ǰ������

��ȷ���Ѿ���ȷ��װ��������򣬲��߱�SSH������

#### ��������

����OVA����Ϻ��뽫������������õ����Ӧ��**Host-Only**�����У�����������**Host-Only**��������Ϊ`10.0.0.1/24`

#### �ϴ�CSV

ͨ���ڼ�����з��ʹ���·��`\\10.0.0.254`,�����û���`tc`������`Cisco123`���룬���ɷ��ʵ�`Commander`Ŀ¼��

����д�õ�CSV�ļ�����`Commander`Ŀ¼�У�����SSH�����û���`tc`������`Cisco123`���뼴�ɡ�

#### SSHִ��ת��

���ӵ�SSH��ͨ����������ɽ��н���������ת����

```
cd commander
./commander.sh {�ļ���}
```

���ͨ�����ʹ���·��`Commander`�ļ����е�`output`�ļ��У����ɻ����`Switchname`�ָ�õĽű���

## Troubleshooting

����Ŀʵ�������� `Commander.sh` ���ø�����������ģ�飬ͨ��ƥ��AWK�����м��������Bash�������սű��Ĺ��̡������루input����Դ����ʱ������CSV�ļ�����module����Ԥ֪�Լ�����������ʱ�����ɹ��̽�����ֹ�������`Commander`Ŀ¼�µ������ļ�`.tmp`��

��������������ԣ���Input��Դ�ȶ�ʱ���������䡣

## ����

Liao Chong - Branch Master

## License

���������GPLv3���п�Դ��

## �����б�

2017/11/18 - �״η���RTM�汾��

- ֧��H3C�����ͺŽ���������������
- �����˰�������VLAN��SNMP��SSH��LinkAggr���ڵ���ʮ��ģ��
- ֧���Բ�ͬSysname���ɲ�ͬ��Ӧ�ű�