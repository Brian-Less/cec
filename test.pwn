#include <a_samp>

#define RUN_TESTS
#include <YSI_Core\y_testing>

#include "cec.inc"

main() { }

new 
    input[144] = "���{FFFF00}�չ���բͧ��{FFFFFF}ʺ�����", 
    output[144]
;

// ���ͺ�Ѻ��ó�ء��
Test:TestCountVowel()
{
    printf("vowel: %d", CE_CountVowel(input));
    ASSERT(CE_CountVowel(input) == 5);
}

// ���ͺ�Ѻ TAG ��
Test:TestCountTag()
{
    printf("tag: %d", CE_CountTag(input));
    ASSERT(CE_CountTag(input) == 2);
}

// ���ͺ�ŧ��ͤ���
Test:TestConvert()
{
    CE_Convert(input, output);
    printf("output: %s", output);
    ASSERT(!strcmp(output, "���{FFFF00}�չ����{FFFFFF}�ͧ��ʺ�����", true));
}

/*
    // Required: YSI-Server/y_colours

    // ���ͺ�ش 1
    ShowPlayerDialog(
        playerid,
        0,
        DIALOG_STYLE_MSGBOX,
        "� ��",
        "FIREBRICK"�ӷ���ѡ��¹�Դ   "FORESTGREEN"�ӷ����¹�١ "WHITE"�����˵�\n\
        ���ӡ����¹   �����¹�����¹   "ORANGE"�� "WHITE"��� "ORANGE"�� "WHITE"����ǹ��Сͺ�ͧ������¹\n\
        �����   �����\n\
        ��   ��   �� �ء���ҧ �� � ��� �� ������ ¡��� ��ҡ� �� � ��ѡ\n\
        "SLATEBLUE"���"WHITE", ���  ���   ����͡���§ \""INDIANRED"��-��"WHITE"\" ��¹ \""INDIANRED"���"WHITE"\"\n\
        ��о�Ժ    �о�Ժ\n\
        ����С���˹    ����˹С���˹    �ٴ��з����;ٴ���ԧ���´��\n\
        �����    ������    \""INDIANRED"������"WHITE"\" ��� �ҡ�� ��á�з� �� ��ԡ�����\n\
        ������    �����    \""INDIANRED"�����"WHITE"\" ("ORANGE"����-"WHITE") ��� "ORANGE"�Ӫ�Դ˹�� "WHITE"�͡�ҡ�� ��á�з� �� "RED"�Թ "GREEN"��� "BLUE"��¹ "BLACK"����ҹ�� "ORANGE"���"WHITE" "TOMATO"�ӡ����"WHITE"\n\
        "SLATEBLUE"��ո�"WHITE", ��շ�    ��ձ�    ���һ�����˹��\n\
        ��ձ�    ��ո�    ����͹ ¡ �Թ�����������繡�кǹ �� ��ոҷѾ\n\
        �����ҡ    �����ҡ\n\
        �����š    ����š    �������� ����š ����\n\
        �����    ������    ��¹���§��ҧ�컡��\n\
        "SLATEBLUE"����"WHITE", �ͻ��    �ͻ�    "YELLOW"��ҹ���"WHITE" \""INDIANRED"�ͺ"WHITE"\"\n\
        �ѧ���    �ѧ�ҹ\n\
        �ҹ����    �������    ��� ���¶֧ ����\n\
        �������    ������\n\
        ���˹�    ���˹�\n\
        �Ե���ѡ���    �Ե����ѡ���    "YELLOW"��ҹ���"WHITE" \""INDIANRED"�Դ-��-��-�ѡ"WHITE"\"\n\
        �Թ���    �Թ��    �� \""INDIANRED"�Թ-�͹"WHITE"\" ��¹ '�Թ��'\n\
        "SLATEBLUE"�خ"WHITE", �خ�    "SLATEBLUE"�خ�"WHITE", �د�    \""INDIANRED"�د�"WHITE"\" "YELLOW"��ҹ���"WHITE" \""INDIANRED"�ش"WHITE"\" ���� \""INDIANRED"�ش-��"WHITE"\" , ��ҵ�ͧ�����ҹ \""INDIANRED"��-��"WHITE"\" ��ͧ��¹ \""INDIANRED"�خ�"WHITE"\" (����˹����)\n\
        ���õ��    ���õ�    "YELLOW"��ҹ���"WHITE" \""INDIANRED"��´"WHITE"\", �����¹ \""INDIANRED"���õ��"WHITE"\" "YELLOW"��ҹ���"WHITE" \""INDIANRED"��¹"WHITE"\" �� ������õ�� "FORESTGREEN"��"WHITE"����\
    ",
        "��ŧ",
        ""
    );

*/